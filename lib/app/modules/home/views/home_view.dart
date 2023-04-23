import 'package:flutter/material.dart';
import 'package:flutter_sandbox/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          ElevatedButton(
            onPressed: () => Get.toNamed(Routes.BIOMETRICS),
            child: const Text('Biometrics'),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () => Get.toNamed(Routes.CREDENTIALS_FORM),
            child: const Text('Forms'),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () => Get.toNamed(Routes.ONBOARDING),
            child: const Text('Onboarding'),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () => Get.toNamed(Routes.CHIPS),
            child: const Text('Chips'),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () => Get.toNamed(Routes.PROTECTED),
            child: const Text('Protected'),
          ),
        ],
      ),
    );
  }
}
