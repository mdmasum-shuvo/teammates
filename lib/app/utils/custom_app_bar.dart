import 'package:contactbook/app/modules/detail/controllers/detail_controller.dart';
import 'package:contactbook/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../theme/Colors.dart';

AppBar customAppbarWidget(String title, DetailController controller) {
  return AppBar(
    // Set this height
    leading: Padding(
      padding: EdgeInsets.only(left: 16.w),
      child: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: secondaryColor,
        ),
        onPressed: () {
          Get.offAllNamed(Routes.HOME);
        },
      ),
    ),
    elevation: 0,
    backgroundColor: darkWhite,
    flexibleSpace: SafeArea(
      child: Stack(alignment: Alignment.centerLeft, children: [
        Center(
          child: Align(
            alignment: Alignment.center,
            child: Text(title,
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Row(children: [
            const Spacer(),
            Obx(() => GestureDetector(
                  onTap: () {
                    controller.isFav.value == "0"
                        ? controller.getEmployeeFavoritePost("1")
                        : controller.getEmployeeFavoritePost("0");
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      controller.isFav.value == "0"
                          ? Icons.favorite_border_outlined
                          : Icons.favorite,
                      color: primaryDarkColor,
                    ),
                  ),
                )),
          ]),
        ),
      ]),
    ),
  );
}
