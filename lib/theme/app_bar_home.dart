import 'package:contactbook/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../app/utils/constants.dart';
import 'Colors.dart';
import 'image_assets.dart';

AppBar customAppbarWidgetDashboard(HomeController controller) {
  return AppBar(
    // Set this height

    elevation: 0,
    backgroundColor: Colors.white,
    flexibleSpace: SafeArea(
      child: Stack(alignment: Alignment.center, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              team_mates_logo_home,
              width: 126.w,
            ),
          ],
        ),
        Obx(() => Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: Row(children: [
                Spacer(),
                if (controller.isFilter.value && controller.isFilterIcon.value)
                  GestureDetector(
                    onTap: () {
                      controller.isFilter.value = false;
                      Constants.isFilter.value = false;
                    },
                    child: Image.asset(
                      filterAlt,
                      width: 24.r,
                    ),
                  )
                else if (!controller.isFilter.value &&
                    controller.isFilterIcon.value)
                  GestureDetector(
                    onTap: () {
                      controller.isFilter.value = true;
                      Constants.isFilter.value = true;
                    },
                    child: Image.asset(
                      filterAltOff,
                      width: 24.r,
                    ),
                  )
              ]),
            )),
      ]),
    ),
  );
}
