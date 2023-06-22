import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
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
  RxList<String> listDistrictStr = <String>["Dhaka", "Tangail"].obs;
  final EmployeeProvider _provider = EmployeeProvider();
  final SettingsProvider _settingProvider = SettingsProvider();
  Rx<EmployeeResponse> employeeList = EmployeeResponse(data: List.empty()).obs;

  final count = 0.obs;

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

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
