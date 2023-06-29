import 'package:contactbook/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'Colors.dart';

Widget primaryButton(String text, Function() onPressed) {
  return SizedBox(
    height: 48.h,
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: primaryDarkColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
              side: const BorderSide(color: primaryDarkColor))),
      onPressed: () {
        onPressed();
      },
      child:text_16_400(text,Colors.white)
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
