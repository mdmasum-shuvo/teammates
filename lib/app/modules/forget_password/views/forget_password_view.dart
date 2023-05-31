import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:teammates/app/routes/app_pages.dart';

import '../controllers/forget_password_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:teammates/theme/button_theme.dart';
import 'package:teammates/theme/text_theme.dart';

import '../../../../theme/image_assets.dart';
class ForgetPasswordView extends GetView<ForgetPasswordController> {
  const ForgetPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Flexible(flex: 2,child: Spacer(),),
              Expanded(
                child: Image.asset(
                  logo,
                  height: 66.h,
                ),
              ),
              const Flexible(flex: 2,child: Spacer(),),

              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text_24_700("Forget Password"),
                    SizedBox(
                      height: 16.h,
                    ),
                    text_12_400("Enter your registered official phone number"),
                    SizedBox(
                      height: 16.h,
                    ),
                    TextFormField(
                      keyboardType:TextInputType.phone ,
                      controller: controller.emailPhoneController,
                      decoration: InputDecoration(
                        hintText: "+880 **************",
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    primaryButton("Next", () => Get.toNamed(Routes.VERIFY_PHONE_NUMBER))
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
