import 'package:contactbook/app/modules/profile/model/ProfileResponse.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:contactbook/app/modules/index/model/EmployeeDetailResponse.dart';
import 'package:contactbook/theme/Colors.dart';
import 'package:contactbook/theme/text_theme.dart';

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
          text_12_400(data?.designation??"", Colors.white),
          SizedBox(
            height: 8.h,
          ),
          text_12_400(data?.contactNumber??"", Colors.white),
          SizedBox(
            height: 8.h,
          ),
          text_12_400(data?.departmentName, Colors.white),
        ],
      ),
    ),
  );
}
Widget basicInfoProfile(Profile? profile) {
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
          text_16_500(profile!.employeeName??"", Colors.white),
          SizedBox(
            height: 8.h,
          ),
          text_12_400(profile!.designation??"", Colors.white),
          SizedBox(
            height: 8.h,
          ),
          text_12_400(profile!.departmentName??"", Colors.white),
          SizedBox(
            height: 8.h,
          ),
          text_12_400(profile!.contactNumber??"", Colors.white),
        ],
      ),
    ),
  );
}
