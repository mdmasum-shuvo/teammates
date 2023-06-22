import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:teammates/app/modules/index/model/EmployeeResponse.dart';
import 'package:teammates/theme/text_theme.dart';

import '../../../../../theme/Colors.dart';
import '../../../../../theme/image_assets.dart';
import '../../../../routes/app_pages.dart';

Widget userItem(Data data) {
  return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.DETAIL);
      },
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius:
        BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding:  EdgeInsets.all(12.r),
        child: Row(
          children: [
            SizedBox(
              height: 48.h,
              width: 48.w,
              child: const CircleAvatar(
                backgroundImage: AssetImage(profile_logo),
                backgroundColor: primaryDarkColor,
              ),
            ),
            SizedBox(width: 12.w,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text_14_500(data.employeeName,primaryDarkColor),
                  text_10_400("${data.designationName} ${data.designationName}"),
                  text_10_400(data.email),
                ],
              ),
            ),
            Image.asset(
              callIcon,
              height: 36.h,
              width: 36.w,
            )
          ],
        ),
      ),
    ),
  );
}
