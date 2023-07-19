import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:contactbook/theme/image_assets.dart';
import 'package:contactbook/theme/text_theme.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../theme/Colors.dart';
import '../../../../theme/app_bar_home.dart';
import '../../../utils/custom_app_bar.dart';
import '../../profile/views/component/basic_info.dart';
import '../../profile/views/component/circular_image.dart';
import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbarWidget("Detail", controller),
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
                        "${controller.employeeDetail.value.data?.imagePath}${controller.employeeDetail.value.data?.image}"))),
                SizedBox(
                  height: 24.h,
                ),
                Obx(() => controller.employeeDetail.value.data != null
                    ? basicInfo(controller.employeeDetail.value.data!)
                    : Container()),
                SizedBox(
                  height: 36.h,
                ),
                Obx(() => Column(
                  children: [

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
                          text_14_400(controller.employeeDetail.value
                              .data?.presentAddress ??
                              ""),
                          SizedBox(
                            height: 16.h,
                          ),
                          text_12_400("Email"),
                          text_14_400(controller
                              . employeeDetail.value.data?.email ??
                              ""),
                          SizedBox(
                            height: 16.h,
                          ),
                          text_12_400("Date of joining"),
                          text_14_400(controller.employeeDetail.value
                              .data?.dateOfJoining ??
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
                              .employeeDetail.value.data?.nid ??
                              ""),
                          SizedBox(
                            height: 16.h,
                          ),
                          text_12_400("Date of Birth"),
                          text_14_400(controller.employeeDetail.value
                              .data?.dateOfBirth ??
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
