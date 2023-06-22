import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';
import '../../index/model/EmployeeResponse.dart';
import '../../index/providers/employee_provider.dart';

class RecentController extends GetxController {
  //TODO: Implement RecentController
  final emailPhoneController = TextEditingController(text: "");
  final EmployeeProvider _provider = EmployeeProvider();
  Rx<EmployeeResponse> employeeList = EmployeeResponse(data: List.empty()).obs;
  Rx<EmployeeResponse> favEmployeeList = EmployeeResponse(data: List.empty()).obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    getEmployeeList();
    getFavEmployeeList();
  }

  @override
  void onClose() {
    super.onClose();
  }
  void getEmployeeList() async {
    EasyLoading.show();

    _provider
        .employeeRecentHistory()
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
  void getFavEmployeeList() async {
    EasyLoading.show();

    _provider
        .favoriteEmployeeList()
        .then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        EasyLoading.dismiss();
        favEmployeeList.value = response;
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);

      }
    });
  }
  void increment() => count.value++;
}
