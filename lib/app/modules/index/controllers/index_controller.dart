import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:contactbook/app/modules/index/model/CompanyResponse.dart';
import 'package:contactbook/app/modules/index/model/DepartmentResponse.dart';
import 'package:contactbook/app/modules/index/model/DesignationResponse.dart';
import 'package:contactbook/app/modules/index/model/EmployeeResponse.dart';
import 'package:contactbook/app/modules/index/providers/employee_provider.dart';
import 'package:contactbook/app/modules/index/providers/settings_provider.dart';

import '../../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';
import '../../sign_in/providers/sign_in_provider.dart';

class IndexController extends GetxController {
  //TODO: Implement IndexController
  final searchController = TextEditingController(text: null);
  RxString department = "Select Department".obs;
  RxString designation = "Select Designation".obs;
  RxString company = "Select Company".obs;

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

  String? selectedDesignationId = null;
  String? selectedDepartmentId = null;
  String? selectedCompanyId = null;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    getEmployeeList();

  }

  void getEmployeeList() async {
    EasyLoading.show();

    _provider
        .employeeList(selectedCompanyId, selectedDepartmentId, selectedDesignationId,
            searchController.text.toString())
        .then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        EasyLoading.dismiss();
        employeeList.value = response;
        getCompany();
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }


  void getDesignation() async {
    //EasyLoading.show();
    _settingProvider.designationList().then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        designationList.value = response;
        //designation.value = designationList.value!.data![0].designationName!;
        setDesignationData();
       // EasyLoading.dismiss();
      } else {
        //EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }

  void getDepartment() async {
   // EasyLoading.show();

    _settingProvider.departmentList().then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        departmentList.value = response;
        //department.value = departmentList.value!.data![0].departmentName!;

        setDepartmentData();
        //getDesignation();

      //  EasyLoading.dismiss();
      } else {
        //getDesignation();

        //  EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }

  void getCompany() async {
   // EasyLoading.show();
    _settingProvider.companyList().then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        companyList.value = response;
        setCompanyData();

        //  EasyLoading.dismiss();
      } else {
        getDepartment();

        //  EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }

  void setDesignationData() async {
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

  void setDepartmentData() async {
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

  void getSelectedIdFromDepartment() {
    for (int i = 0; i < listDepartmentStr.length; i++) {
      if (department == listDepartmentStr[i]) {
        if (department == "Select Department") {
          selectedDepartmentId = null;
          getEmployeeList();
        } else {
          selectedDepartmentId = listDepartmentId.value[i - 1];
          getEmployeeList();
          break;
        }
      }
    }
  }

  void getSelectedIdFromDesignation() {
    for (int i = 0; i < listDesignationStr.length; i++) {
      if (designation == listDesignationStr[i]) {
        if (designation == "Select Designation") {
          selectedDesignationId = null;
          getEmployeeList();
        } else {
          selectedDesignationId = listDesignationId[i - 1];
          getEmployeeList();
          break;
        }
      }
    }
  }

  void getSelectedIdFromCompany() {
    for (int i = 0; i < listCompanyStr.length; i++) {
      if (company == listCompanyStr[i]) {
        if (company == "Select Company") {
          selectedCompanyId = null;
          getEmployeeList();
        } else {
          selectedCompanyId = listCompanyId[i - 1];
          getEmployeeList();
          break;
        }
      }
    }
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

  void setCompanyData() async{
    List<String> listStr = [];
    List<String> listIds = [];
    listStr.add("Select Company");

    for (int i = 0; i < companyList.value.data!.length; i++) {
      listStr.add(companyList.value.data![i].branchName!);
      listIds.add(companyList.value.data![i].branchId.toString());
    }

    listCompanyStr.value = listStr;
    listCompanyId.value = listIds;
    getDepartment();

  }
}
