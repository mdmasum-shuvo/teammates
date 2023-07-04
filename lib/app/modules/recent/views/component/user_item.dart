import 'package:contactbook/app/modules/recent/controllers/recent_controller.dart';
import 'package:contactbook/app/modules/recent/views/recent_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:contactbook/app/modules/index/model/EmployeeResponse.dart';
import 'package:contactbook/theme/text_theme.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../theme/Colors.dart';
import '../../../../../theme/image_assets.dart';
import '../../../../routes/app_pages.dart';
import '../../../../utils/load_network_image.dart';

Widget userItem(Data data) {
  return GestureDetector(
    onTap: () {
      Get.toNamed(Routes.DETAIL, arguments: [data.employeeId]);
    },
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.r),
        child: Row(
          children: [
            SizedBox(
              height: 48.h,
              width: 48.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.h),
                child: loadNetworkImage("${data.imagePath}${data.image}"),
              ),
            ),
            SizedBox(
              width: 12.w,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text_14_500(data.employeeName, primaryDarkColor),
                  text_10_400(
                      "${data.designationName} ${data.designationName}"),
                  text_10_400(data.email),
                ],
              ),
            ),
            data.contactNumber != null
                ? GestureDetector(
                    onTap: () async {
                      final call = Uri.parse('tel:${data.contactNumber!}');
                      if (await canLaunchUrl(call)) {
                        launchUrl(call);
                      } else {
                        throw 'Could not launch $call';
                      }
                    },
                    child: Image.asset(
                      callIcon,
                      height: 36.h,
                      width: 36.w,
                    ),
                  )
                : Container()
          ],
        ),
      ),
    ),
  );
}
