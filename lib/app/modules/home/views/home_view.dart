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
        centerTitle: true,
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () => Get.toNamed(Routes.BIOMETRICS),
          child: const Text('Biometrics'),
        ),
      ),
    );
  }
}
