import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/verify_controller.dart';

class VerifyView extends GetView<VerifyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VerifyView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text('We have sent you email to verified your account'),
            TextButton(
              onPressed: () => Get.offAllNamed(Routes.LOGIN),
              child: Text("Login again"),
            ),
          ],
        ),
      ),
    );
  }
}
