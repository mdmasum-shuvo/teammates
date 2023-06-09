import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/constants.dart';
import '../../../utils/utils.dart';
import '../providers/sign_in_provider.dart';

class SignInController extends GetxController {
  //TODO: Implement SignInController
  final SignInProvider _provider = SignInProvider();

  final emailPhoneController = TextEditingController(text: "");
  final passwordController = TextEditingController(text: "");

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

  void login() async {
    EasyLoading.show();
    _provider
        .login(emailPhoneController.text.toString(),
        passwordController.text.toString())
        .then((response) async {
      print(RxStatus.success().toString());
      if (response.statusCode == 200) {
        EasyLoading.dismiss();

        Constants.token=response.token!;
        Constants.isHeadOffice=response.user!.isHeadOffice!;
        Constants.headers = {
          "Accept": "application/json",
          "token": Constants.token
        };
        Get.offNamed(Routes.HOME);
      }else{
        EasyLoading.dismiss();

        Utils.showControllerError(response);
      }
    });
  }

}


