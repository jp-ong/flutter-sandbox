import 'package:flutter/material.dart';
import 'package:flutter_sandbox/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../controllers/password_auth_controller.dart';

class PasswordAuthView extends GetView<PasswordAuthController> {
  const PasswordAuthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password Required'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextField(),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => Get.toNamed(Routes.PROTECTED_SECTION),
            child: const Text('Submit Credentials'),
          ),
        ],
      ),
    );
  }
}
