import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../theme/Colors.dart';
import '../../profile/views/component/basic_info.dart';
import '../../profile/views/component/circular_image.dart';
import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);
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
              Obx(() => basicInfo(controller.employeeDetail.value.data!))

            ],
          ),
        ),
      ),
    );
  }
}
