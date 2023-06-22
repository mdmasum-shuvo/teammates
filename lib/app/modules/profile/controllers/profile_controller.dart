import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:teammates/app/modules/index/model/EmployeeDetailResponse.dart';

import '../../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';
import '../../index/providers/employee_provider.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController
  final EmployeeProvider _provider = EmployeeProvider();
  Rx<EmployeeDetailResponse> employeeDetail = EmployeeDetailResponse().obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void getEmployeeDetail(String id) async {
    EasyLoading.show();

    _provider.employeeDetail(id).then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        employeeDetail.value = response;
        EasyLoading.dismiss();

      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }

}
