import 'package:contactbook/app/utils/constants.dart';
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
              Constants.isHeadOffice=="1"?
              Obx(
                () => DropdownButtonFormField<String>(
                  value: controller.company.value,
                  icon: const Icon(Icons.arrow_drop_down_sharp),
                  elevation: 16,
                  style: textTheme1.titleMedium,
                  decoration: const InputDecoration(
                    hintText: "Select Company",
                  ),
                  onChanged: (String? value) {
                    //This is called when the user selects an item.
                    controller.company.value = value!;
                    controller.getSelectedIdFromCompany();

                  },
                  items: controller.listCompanyStr.value
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ):Container(),
              SizedBox(
                height: 10.h,
              ),
              /*Obx(
                () => DropdownButtonFormField<String>(
                 // value: controller.designation.value,
                  icon: const Icon(Icons.arrow_drop_down_sharp),
                  elevation: 16,
                  style: textTheme1.titleMedium,
                  decoration: const InputDecoration(
                    hintText: "Select Designation",
                  ),
                  onChanged: (String? value) {
                    //This is called when the user selects an item.
                    controller.designation.value = value!;
                    controller.getSelectedIdFromDesignation();
                  },
                  items: controller.listDesignationStr.value
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),*/
              SizedBox(
                height: 10.h,
              ),
              Obx(
                () => DropdownButtonFormField<String>(
                  icon: const Icon(Icons.arrow_drop_down_sharp),
                  elevation: 16,
                  style: textTheme1.titleMedium,
                  decoration: const InputDecoration(
                    hintText: "Select Department",
                  ),
                  onChanged: (String? value) {
                    //This is called when the user selects an item.
                    controller.department.value = value!;
                    controller.getSelectedIdFromDepartment();
                  },
                  items: controller.listDepartmentStr.value
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
      /*        Obx(
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
              ),*/
              TextFormField(
                keyboardType: TextInputType.text,
                controller: controller.searchController,
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: primaryDarkColor,
                  ),
                  hintText: "Search Contact",
                ),
                onChanged: (text) {
                  print('Enter on change pin is $text');
                  controller.getEmployeeList();

                  /// return the entered pin
                },
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
                child:Obx(() =>  ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.employeeList.value.data?.length,
                  itemBuilder: (context, index) {
                    return userItem(controller.employeeList.value.data![index]);
                  },
                )),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
