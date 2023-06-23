import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teammates/app/modules/index/model/EmployeeDetailResponse.dart';
import 'package:teammates/theme/Colors.dart';
import 'package:teammates/theme/text_theme.dart';

Widget basicInfo(Data? data) {
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
          text_16_500(data?.employeeName??"", Colors.white),
          SizedBox(
            height: 8.h,
          ),
          text_12_400(data?.designationId??"", Colors.white),
          SizedBox(
            height: 8.h,
          ),
          text_12_400(data?.contactNumber??"", Colors.white),
          SizedBox(
            height: 8.h,
          ),
          text_12_400(data?.email, Colors.white),
        ],
      ),
    ),
  );
}
