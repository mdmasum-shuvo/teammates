import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:contactbook/app/routes/app_pages.dart';
import 'package:contactbook/theme/Colors.dart';
import 'package:contactbook/theme/button_theme.dart';
import 'package:contactbook/theme/text_theme.dart';

import '../../../../theme/image_assets.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        teamMatesLogin,
                        height: 80.h,
                      ),
                    ),
                    SizedBox(
                      height: 60.h,
                    ),

                    text_24_700("Sign In"),
                    SizedBox(
                      height: 12.h,
                    ),
                    text_12_400("Enter your registered official Employee Code"),
                    SizedBox(
                      height: 12.h,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: controller.emailPhoneController,
                      decoration: InputDecoration(
                        hintText: "Employee Code",
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    TextFormField(
                      controller: controller.passwordController,
                      decoration: InputDecoration(
                        hintText: "enter password",
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    /*           GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.FORGET_PASSWORD);
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                        child: text_12_400(
                            "Forget Password", primaryDarkColor),
                      ),
                    ),*/
                    SizedBox(
                      height: 8.h,
                    ),
                    primaryButton("Login", () => controller.login()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
