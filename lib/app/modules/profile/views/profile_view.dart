import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:teammates/theme/Colors.dart';

import '../controllers/profile_controller.dart';
import 'component/basic_info.dart';
import 'component/circular_image.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 24.h,),
              Align(
                  alignment: Alignment.topCenter,
                  child: circularProfileImage("")),
              SizedBox(height: 24.h,),
              Obx(() => basicInfo(controller.employeeDetail.value?.data))

            ],
          ),
        ),
      ),
    );
  }
}
