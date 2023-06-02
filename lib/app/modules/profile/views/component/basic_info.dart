import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teammates/theme/Colors.dart';
import 'package:teammates/theme/text_theme.dart';

Widget basicInfo() {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            secondaryColor,
            primaryDarkColor,
          ],
        )),
    child: Padding(
      padding:  EdgeInsets.symmetric(vertical: 16.h),
      child: Column(
        children: [
          text_16_500("Masum Talukder", Colors.white),
          SizedBox(
            height: 8.h,
          ),
          text_12_400("Senior Software Engineer", Colors.white),
          SizedBox(
            height: 8.h,
          ),
          text_12_400("Mobile Apss Department", Colors.white),
          SizedBox(
            height: 8.h,
          ),
          text_12_400("Appinion BD LTD", Colors.white),
        ],
      ),
    ),
  );
}
