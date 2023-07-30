import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:contactbook/theme/Colors.dart';

import '../../../../theme/image_assets.dart';
import '../../../../theme/text_theme.dart';
import '../controllers/profile_controller.dart';
import 'component/basic_info.dart';
import 'component/circular_image.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController());
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: Obx(() => circularProfileImage(
                        "${controller.profileResponse.value.profile?.imagePath}${controller.profileResponse.value.profile?.image}"))),
                SizedBox(
                  height: 24.h,
                ),
                Obx(() => controller.profileResponse.value.profile != null
                    ? basicInfoProfile(controller.profileResponse.value.profile)
                    : Container()),
                SizedBox(
                  height: 36.h,
                ),
                Obx(() => Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.0.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                callIcon,
                                width: 36.w,
                                height: 36.w,
                              ),
                              Image.asset(
                                chatIcon,
                                width: 36.w,
                                height: 36.w,
                              ),
                              Image.asset(
                                whatsAppICon,
                                width: 36.w,
                                height: 36.w,
                              ),
                              Image.asset(
                                messageIcon,
                                width: 36.w,
                                height: 36.w,
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 24.0),
                          child: Center(
                            child: Divider(
                              height: 20,
                              thickness: 1,
                              color: secondaryColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text_12_400("Address"),
                              text_14_400(controller.profileResponse.value
                                      .profile?.presentAddress ??
                                  ""),
                              SizedBox(
                                height: 16.h,
                              ),
                              text_12_400("Email"),
                              text_14_400(controller
                                      .profileResponse.value.profile?.email ??
                                  ""),
                              SizedBox(
                                height: 16.h,
                              ),
                              text_12_400("Date of joining"),
                              text_14_400(controller.profileResponse.value
                                      .profile?.dateOfJoining ??
                                  ""),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 24.0),
                          child: Center(
                            child: Divider(
                              height: 20,
                              thickness: 1,
                              color: secondaryColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text_12_400("NID"),
                              text_14_400(controller
                                      .profileResponse.value.profile?.nid ??
                                  ""),
                              SizedBox(
                                height: 16.h,
                              ),
                              text_12_400("Date of Birth"),
                              text_14_400(controller.profileResponse.value
                                      .profile?.dateOfBirth ??
                                  ""),
                            ],
                          ),
                        ),
                      ],
                    )),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: Center(
                    child: Divider(
                      height: 20,
                      thickness: 1,
                      color: secondaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
