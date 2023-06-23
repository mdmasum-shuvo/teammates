import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:teammates/app/modules/index/model/CompanyResponse.dart';
import 'package:teammates/app/modules/index/model/DepartmentResponse.dart';
import 'package:teammates/app/modules/index/model/DesignationResponse.dart';
import 'package:teammates/app/modules/index/model/EmployeeResponse.dart';
import 'package:teammates/app/modules/index/providers/employee_provider.dart';
import 'package:teammates/app/modules/index/providers/settings_provider.dart';

import '../../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';
import '../../sign_in/providers/sign_in_provider.dart';

class IndexController extends GetxController {
  //TODO: Implement IndexController
  final emailPhoneController = TextEditingController(text: "");
  RxString district = "Dhaka".obs;
  RxString department = "Select Department".obs;
  RxString designation = "Select Designation".obs;

  RxList<String> listDistrictStr = <String>["Dhaka", "Tangail"].obs;
  final EmployeeProvider _provider = EmployeeProvider();
  final SettingsProvider _settingProvider = SettingsProvider();
  Rx<EmployeeResponse> employeeList = EmployeeResponse(data: List.empty()).obs;
  Rx<DesignationResponse> designationList =
      DesignationResponse(data: List.empty()).obs;
  Rx<DepartmentResponse> departmentList =
      DepartmentResponse(data: List.empty()).obs;
  Rx<CompanyResponse> companyList = CompanyResponse(data: List.empty()).obs;

  RxList<String> listCompanyStr = <String>[].obs;
  RxList<String> listCompanyId = <String>[].obs;

  RxList<String> listDepartmentStr = <String>[].obs;
  RxList<String> listDepartmentId = <String>[].obs;

  RxList<String> listDesignationStr = <String>[].obs;
  RxList<String> listDesignationId = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    getEmployeeList();
    getCompany();
    getDepartment();
    getDesignation();
  }

  void getEmployeeList() async {
    EasyLoading.show();

    _provider
        .employeeList("company", "department", "designation", "code")
        .then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        EasyLoading.dismiss();
        employeeList.value = response;
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }

  void getEmployeeDetail(String id) async {
    EasyLoading.show();

    _provider.employeeDetail(id).then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        // bannerResponse.value = response;
        EasyLoading.dismiss();
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }

  void getDesignation() async {
    EasyLoading.show();
    _settingProvider.designationList().then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        designationList.value = response;
        //designation.value = designationList.value!.data![0].designationName!;
        setDesignationData();
        EasyLoading.dismiss();
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }

  void getDepartment() async {
    EasyLoading.show();

    _settingProvider.departmentList().then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        departmentList.value = response;
        //department.value = departmentList.value!.data![0].departmentName!;

        setDepartmentData();

        EasyLoading.dismiss();
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }

  void getCompany() async {
    EasyLoading.show();
    _settingProvider.companyList().then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        // bannerResponse.value = response;
        EasyLoading.dismiss();
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }

  void setDesignationData() {
    List<String> listStr = [];
    List<String> listIds = [];

    listStr.add("Select Designation");

    for (int i = 0; i < designationList.value.data!.length; i++) {
      listStr.add(designationList.value.data![i].designationName!);
      listIds.add(designationList.value.data![i].designationId.toString());
    }

    listDesignationStr.value = listStr;
    listDesignationId.value = listIds;
  }

  void setDepartmentData() {
    List<String> listStr = [];
    List<String> listIds = [];
    listStr.add("Select Department");

    for (int i = 0; i < departmentList.value.data!.length; i++) {
      listStr.add(departmentList.value.data![i].departmentName!);
      listIds.add(departmentList.value.data![i].departmentId.toString());
    }

    listDepartmentStr.value = listStr;
    listDepartmentId.value = listIds;
  }

/*
  void setCompanyData() {
    List<String> listStr = [];
    List<String> listIds = [];

    for (int i = 0; i < companyList.value.data!.length; i++) {
      listStr.add(companyList.value.data![i].contactNumber!);
      listIds.add(companyList.value.data![i].departmentId.toString());
    }

    listDepartmentStr.value = listStr;
    listDepartmentId.value = listIds;
  }
*/
  @override
  void onClose() {
    super.onClose();
  }
}
