import 'package:contactbook/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:contactbook/app/modules/index/views/index_view.dart';
import 'package:contactbook/app/modules/profile/views/profile_view.dart';
import 'package:contactbook/app/modules/recent/views/recent_view.dart';

import '../../../../theme/Colors.dart';
import '../../../../theme/app_bar_home.dart';
import '../../../../theme/text_theme.dart';
import '../../recent/controllers/recent_controller.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get.put(RecentController());
    return Scaffold(
      appBar: customAppbarWidgetDashboard(controller),
      body: PageView(
        controller: controller.pageController,
        onPageChanged: (v) {
          controller.tabIndex.value = v;
        },
        children: [
          RecentView(),
          IndexView(),
          ProfileView(),
        ],
      ),
      bottomNavigationBar: Obx(() => BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            child: Container(
              height: 60.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      // HomeView(); // if user taps on this dashboard tab will be active
                      controller.tabIndex.value = 0;
                      controller.isFilterIcon.value=false;
                      controller.pageController
                          .jumpToPage(controller.tabIndex.value);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.history,
                            color: controller.tabIndex.value == 0
                                ? primaryDarkColor
                                : Colors.grey,
                            size: 18),
                        text_10_400(
                            "Recent",
                            controller.tabIndex.value == 0
                                ? primaryDarkColor
                                : Colors.grey)
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      //CategoryView(); // if user taps on this dashboard tab will be active
                      controller.tabIndex.value = 1;
                      controller.isFilterIcon.value=true;

                      controller.pageController
                          .jumpToPage(controller.tabIndex.value);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.manage_search,
                            color: controller.tabIndex.value == 1
                                ? primaryDarkColor
                                : Colors.grey,
                            size: 18),
                        text_10_400(
                            "Index",
                            controller.tabIndex.value == 1
                                ? primaryDarkColor
                                : Colors.grey)
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      Container(); // if user taps on this dashboard tab will be active
                      controller.tabIndex.value = 2;
                      controller.pageController
                          .jumpToPage(controller.tabIndex.value);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.person_2_outlined,
                            color: controller.tabIndex.value == 2
                                ? primaryDarkColor
                                : Colors.grey,
                            size: 18),
                        text_10_400(
                            "Profile",
                            controller.tabIndex.value == 2
                                ? primaryDarkColor
                                : Colors.grey)
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      Container(); // if user taps on this dashboard tab will be active
                      controller.tabIndex.value = 3;
                      Get.offAllNamed(Routes.SIGN_IN);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.logout,
                            color: controller.tabIndex.value == 3
                                ? primaryDarkColor
                                : Colors.grey,
                            size: 18),
                        text_10_400(
                            "Log Out",
                            controller.tabIndex.value == 3
                                ? primaryDarkColor
                                : Colors.grey)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
