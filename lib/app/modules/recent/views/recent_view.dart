import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:contactbook/theme/text_theme.dart';

import '../../../../theme/Colors.dart';
import '../controllers/recent_controller.dart';
import 'component/favorite_item.dart';
import 'component/user_item.dart';

class RecentView extends GetView<RecentController> {
  const RecentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(RecentController());
    controller.getEmployeeList();
    controller.getFavEmployeeList();
    return Scaffold(
        backgroundColor: primaryColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.h),
          child: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              children: [
  /*              TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: controller.emailPhoneController,
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: primaryDarkColor,
                    ),
                    hintText: "Search Contact",
                  ),
                ),*/
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    text_14_400("Favorite", primaryDarkColor),
                    text_14_400("", primaryDarkColor)
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  child: Obx(() => GridView.count(
                        // Create a grid with 2 columns. If you change the scrollDirection to
                        // horizontal, this produces 2 rows.
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        // Generate 100 widgets that display their index in the List.
                        children: List.generate(
                            controller.favEmployeeList.value.data!.length,
                            (index) {
                          return favoriteItem(
                              controller.favEmployeeList.value.data![index]);
                        }),
                      )),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: text_14_400("Recent", primaryDarkColor)),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  child: Obx(() => ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.employeeList.value.data!.length,
                        itemBuilder: (context, index) {
                          return userItem(
                              controller.employeeList.value.data![index]);
                        },
                      )),
                ),
              ],
            ),
          )),
        ));
  }
}
