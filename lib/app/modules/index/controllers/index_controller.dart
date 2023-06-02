import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class IndexController extends GetxController {
  //TODO: Implement IndexController
  final emailPhoneController = TextEditingController(text: "");
  RxString district = "Dhaka".obs;
  RxList<String> listDistrictStr = <String>["Dhaka","Tangail"].obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
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
