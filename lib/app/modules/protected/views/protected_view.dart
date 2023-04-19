import 'package:flutter/material.dart';
import 'package:flutter_sandbox/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/protected_controller.dart';

class ProtectedView extends GetView<ProtectedController> {
  const ProtectedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Protected'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.toNamed(Routes.PASSWORD_AUTH),
          child: const Text('Access Protected Page'),
        ),
      ),
    );
  }
}
