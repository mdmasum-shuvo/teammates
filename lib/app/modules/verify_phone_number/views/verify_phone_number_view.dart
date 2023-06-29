import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:contactbook/app/routes/app_pages.dart';
import 'package:contactbook/theme/Colors.dart';

import '../../../../theme/button_theme.dart';
import '../../../../theme/image_assets.dart';
import '../../../../theme/text_theme.dart';
import '../controllers/verify_phone_number_controller.dart';

class VerifyPhoneNumberView extends GetView<VerifyPhoneNumberController> {
  const VerifyPhoneNumberView({Key? key}) : super(key: key);

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
                    text_24_700("Verify Phone number"),
                    SizedBox(
                      height: 16.h,
                    ),
                    text_12_400(
                        "To verify your phone, we’ve sent a One Time Password (OTP) to +88 019 2200 3953 (Change)"),
                    SizedBox(
                      height: 16.h,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: controller.emailPhoneController,
                      decoration: InputDecoration(
                        hintText: "Enter OTP",
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    primaryButton(
                        "Verify", () => Get.toNamed(Routes.RESET_PASSWORD)),
                    SizedBox(height: 40.h),
                    Align(
                        alignment: Alignment.topCenter,
                        child: text_14_400("Resend OTP", primaryDarkColor))
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
