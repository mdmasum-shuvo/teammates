import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/verify_phone_number_controller.dart';

class VerifyPhoneNumberView extends GetView<VerifyPhoneNumberController> {
  const VerifyPhoneNumberView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VerifyPhoneNumberView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VerifyPhoneNumberView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
