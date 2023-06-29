import 'dart:ffi';

import 'package:contactbook/app/utils/DefaultResponse.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';
import '../../index/model/EmployeeDetailResponse.dart';
import '../../index/providers/employee_provider.dart';

class DetailController extends GetxController {
  //TODO: Implement DetailController
  final EmployeeProvider _provider = EmployeeProvider();
  Rx<EmployeeDetailResponse> employeeDetail = EmployeeDetailResponse().obs;
  Rx<DefaultResponse> favoriteResponse = DefaultResponse().obs;
  String employeeId = Get.arguments[0];
  RxString isFav = "".obs;
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    getEmployeeDetail(employeeId);
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getEmployeeDetail(String id) async {
    EasyLoading.show();

    _provider.employeeDetail(id).then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        EasyLoading.dismiss();
        employeeDetail.value = response;
        isFav.value = employeeDetail.value.data!.isFavourite!;
        _provider.employeeRecentPost(id);

      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }

  void getEmployeeFavoritePost(String isFavorite) async {
    EasyLoading.show();
    _provider
        .employeeFavoritePost(
            employeeDetail.value.data!.employeeId!, isFavorite)
        .then((response) async {
      print(RxStatus.success().toString());
      if (response != null) {
        favoriteResponse.value = response;
        EasyLoading.dismiss();
        isFav.value=isFavorite;
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }
}
