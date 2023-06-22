import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teammates/theme/Colors.dart';
import 'package:teammates/theme/text_theme.dart';

import '../../../../../theme/image_assets.dart';
import '../../../index/model/EmployeeResponse.dart';

Widget favoriteItem(Data data) {
  return Column(
    children: [
      Expanded(
        child: SizedBox(
          height: 96.h,
          width: 96.w,
          child: CircleAvatar(
            backgroundImage: AssetImage(profile_logo),
            backgroundColor: primaryDarkColor,
          ),
        ),
      ),
      SizedBox(height: 8.h,),
      text_12_400(data.employeeName),
      SizedBox(height: 16.h,),

    ],
  );
}
