import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:contactbook/theme/Colors.dart';
import 'package:contactbook/theme/text_theme.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../theme/image_assets.dart';
import '../../../../../theme/theme.dart';
import '../../../../routes/app_pages.dart';
import '../../../../utils/load_network_image.dart';
import '../../../index/model/EmployeeResponse.dart';

Widget favoriteItem(Data data) {

  return GestureDetector(
    onTap: () {
      Get.toNamed(Routes.DETAIL, arguments: [data.employeeId]);
    },
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: SizedBox(
            height: 68,
            width: 68,
            child:loadNetworkImage("${data.imagePath}${data.image}"),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          data.employeeName ?? "",
          style: textTheme1.bodyLarge?.copyWith(color: Colors.black),
          maxLines: 1,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 16.h,
        ),
      ],
    ),
  );
}
