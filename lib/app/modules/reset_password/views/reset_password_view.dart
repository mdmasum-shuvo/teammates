import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:teammates/theme/Colors.dart';
import 'package:teammates/theme/button_theme.dart';
import 'package:teammates/theme/text_theme.dart';

import '../../../../theme/image_assets.dart';
import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Flexible(
                flex: 2,
                child: Spacer(),
              ),
              Expanded(
                child: Image.asset(
                  logo,
                  height: 66.h,
                ),
              ),
              const Flexible(
                flex: 2,
                child: Spacer(),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text_24_700("Set New Password"),
                    SizedBox(
                      height: 16.h,
                    ),
                    Obx(() =>
                        TextFormField(
                          keyboardType: TextInputType.text,
                          controller: controller.emailPhoneController,
                          obscureText: !controller.passwordVisibleOne.value,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(
                                  // Based on passwordVisible state choose the icon
                                  controller.passwordVisibleOne.value
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.grey,
                                ),
                                onPressed: () {
                                  // Update the state i.e. toogle the state of passwordVisible variable
                                  controller.passwordVisibleOne.value =
                                  !controller.passwordVisibleOne.value;
                                }),
                            hintText: "**************",
                          ),
                        )),
                    SizedBox(
                      height: 8.h,
                    ),
                    Obx(() =>
                        TextFormField(
                          controller: controller.emailPhoneController,
                          obscureText: !controller.passwordVisibleTwo.value,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(
                                  // Based on passwordVisible state choose the icon
                                  controller.passwordVisibleTwo.value
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                    color: Colors.grey,

                                ),
                                onPressed: () {
                                  // Update the state i.e. toogle the state of passwordVisible variable
                                  controller.passwordVisibleTwo.value =
                                  !controller.passwordVisibleTwo.value;
                                }),
                            hintText: "**************",
                          ),
                        )),
                    SizedBox(
                      height: 24.h,
                    ),
                    primaryButton("Submit", () => null)
                  ],
                ),
              ),
              const Flexible(
                flex: 1,
                child: Spacer(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
