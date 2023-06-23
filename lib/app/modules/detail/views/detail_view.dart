import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:teammates/theme/image_assets.dart';
import 'package:teammates/theme/text_theme.dart';

import '../../../../theme/Colors.dart';
import '../../../../theme/app_bar_home.dart';
import '../../profile/views/component/basic_info.dart';
import '../../profile/views/component/circular_image.dart';
import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbarWidgetDashboard(),
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
                    child: circularProfileImage(
                        "${controller.employeeDetail.value.data?.imagePath}${controller.employeeDetail.value.data?.image}")),
                SizedBox(
                  height: 24.h,
                ),
                Obx(() => controller.employeeDetail.value.data != null
                    ? basicInfo(controller.employeeDetail.value.data!)
                    : Container()),
                SizedBox(
                  height: 36.h,
                ),
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
                      text_12_400("Phone (Office)"),
                      text_14_400(
                          controller.employeeDetail.value.data?.contactNumber ??
                              ""),
                      SizedBox(
                        height: 16.h,
                      ),
                      text_12_400("Phone (Home)"),
                      text_14_400(
                          controller.employeeDetail.value.data?.contactNumber ??
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
                      text_12_400("Email (Office)"),
                      text_14_400(
                          controller.employeeDetail.value.data?.email ?? ""),
                      SizedBox(
                        height: 16.h,
                      ),
                      text_12_400("Email (Personal)"),
                      text_14_400(
                          controller.employeeDetail.value.data?.email ?? ""),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
