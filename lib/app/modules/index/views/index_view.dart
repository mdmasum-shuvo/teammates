import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../theme/Colors.dart';
import '../../../../theme/text_theme.dart';
import '../../../../theme/theme.dart';
import '../../recent/views/component/user_item.dart';
import '../controllers/index_controller.dart';

class IndexView extends GetView<IndexController> {
  const IndexView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(IndexController());
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 16.h,
              ),
              text_14_400("Filter", primaryDarkColor),
              SizedBox(
                height: 16.h,
              ),
              Obx(
                () => DropdownButtonFormField<String>(
                  value: controller.district.value,
                  icon: const Icon(Icons.arrow_drop_down_sharp),
                  elevation: 16,
                  style: textTheme1.titleMedium,
                  decoration: const InputDecoration(
                    hintText: "ex: House, Road, Flat No.",
                  ),
                  onChanged: (String? value) {
                    //This is called when the user selects an item.
                    controller.district.value = value!;
                  },
                  items: controller.listDistrictStr.value
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Obx(
                () => DropdownButtonFormField<String>(
                  value: controller.district.value,
                  icon: const Icon(Icons.arrow_drop_down_sharp),
                  elevation: 16,
                  style: textTheme1.titleMedium,
                  decoration: const InputDecoration(
                    hintText: "ex: House, Road, Flat No.",
                  ),
                  onChanged: (String? value) {
                    //This is called when the user selects an item.
                    controller.district.value = value!;
                  },
                  items: controller.listDistrictStr.value
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Obx(
                () => DropdownButtonFormField<String>(
                  value: controller.district.value,
                  icon: const Icon(Icons.arrow_drop_down_sharp),
                  elevation: 16,
                  style: textTheme1.titleMedium,
                  decoration: const InputDecoration(
                    hintText: "ex: House, Road, Flat No.",
                  ),
                  onChanged: (String? value) {
                    //This is called when the user selects an item.
                    controller.district.value = value!;
                  },
                  items: controller.listDistrictStr.value
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Obx(
                () => DropdownButtonFormField<String>(
                  value: controller.district.value,
                  icon: const Icon(Icons.arrow_drop_down_sharp),
                  elevation: 16,
                  style: textTheme1.titleMedium,
                  decoration: const InputDecoration(
                    hintText: "ex: House, Road, Flat No.",
                  ),
                  onChanged: (String? value) {
                    //This is called when the user selects an item.
                    controller.district.value = value!;
                  },
                  items: controller.listDistrictStr.value
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                controller: controller.emailPhoneController,
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: primaryDarkColor,
                  ),
                  hintText: "Search Contact",
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text_14_400("Contacts", primaryDarkColor),
                  text_14_400("Showing reseult 10 of 1000 ")
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return userItem();
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}