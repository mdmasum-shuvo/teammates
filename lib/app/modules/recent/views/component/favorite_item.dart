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
      children: [
        Expanded(
          child: SizedBox(
            height: 86.h,
            width: 86,
            child:ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: loadNetworkImage("${data.imagePath}${data.image}"),
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          data.employeeName ?? "",
          style: textTheme1.bodyLarge?.copyWith(color: Colors.black),
          maxLines: 1,
        ),
        SizedBox(
          height: 16.h,
        ),
      ],
    ),
  );
}
