import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../theme/image_assets.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignInView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset(logo)
        ],
      ),
    );
  }
}
