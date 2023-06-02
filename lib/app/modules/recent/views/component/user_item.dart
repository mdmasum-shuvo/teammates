import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teammates/theme/text_theme.dart';

import '../../../../../theme/Colors.dart';
import '../../../../../theme/image_assets.dart';

Widget userItem() {
  return Card(
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
                text_14_500("Masum Talukder",primaryDarkColor),
                text_10_400("Software Engineer, Mobile Apps team"),
                text_10_400("Appinion BD Limited"),
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
  );
}
