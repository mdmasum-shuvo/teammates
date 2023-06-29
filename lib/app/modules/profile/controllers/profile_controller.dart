import 'package:contactbook/app/modules/profile/model/ProfileResponse.dart';
import 'package:contactbook/app/modules/profile/providers/profile_provider.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:contactbook/app/modules/index/model/EmployeeDetailResponse.dart';

import '../../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';
import '../../index/providers/employee_provider.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController
  final ProfileProvider _provider = ProfileProvider();
  Rx<ProfileResponse> profileResponse = ProfileResponse().obs;

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getProfile();
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

  void getProfile() async {
    EasyLoading.show();
    _provider.profile().then((response) async {
      print(RxStatus.success().toString());
      if (response != null) {
        profileResponse.value = response;
        EasyLoading.dismiss();
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }
}
