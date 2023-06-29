
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Colors.dart';
import 'image_assets.dart';

AppBar customAppbarWidgetDashboard() {
  return AppBar(
    // Set this height
    elevation: 0,
    backgroundColor: Colors.white,
    flexibleSpace: SafeArea(
      child: Stack(alignment: Alignment.center, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(team_mates_logo_home,width: 126.w,),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Row(children: [
            Spacer(),
            GestureDetector(
              onTap: (){
               // Get.toNamed(Routes.SEARCH);
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.notifications,
                  color: primaryDarkColor,
                ),
              ),
            ),
       
          ]),
        ),
      ]),
    ),
  );
}
