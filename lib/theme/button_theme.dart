import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teammates/theme/text_theme.dart';


import 'Colors.dart';

Widget greenButton(String text, Function() onPressed) {
  return SizedBox(
    height: 48.h,
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: secondaryColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
              side: const BorderSide(color: secondaryColor))),
      onPressed: () {
        onPressed();
      },
      child:text_16_700(text,Colors.white)
    ),
  );
}
Widget whiteButton(String text, Function() onPressed) {
  return SizedBox(
    height: 48.h,
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
              side: const BorderSide(color: secondaryColor))),
      onPressed: () {
        onPressed();
      },
      child:
      text_16_700(text,secondaryColor)
    ),
  );
}
