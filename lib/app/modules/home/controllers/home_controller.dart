import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  RxInt tabIndex = 0.obs;
  late PageController pageController;
  final count = 0.obs;
  final isFilter = false.obs;
  final isFilterIcon = false.obs;
  @override
  void onInit() {
    super.onInit();
    tabIndex.value = 0;
    pageController = PageController(initialPage: 0);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
