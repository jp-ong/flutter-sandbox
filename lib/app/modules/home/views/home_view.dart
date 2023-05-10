import 'package:flutter/material.dart';
import 'package:flutter_sandbox/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class FeatureButton {
  final String route;
  final String label;

  FeatureButton({required this.route, required this.label});
}

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  static List<FeatureButton> featureButtons = [
    FeatureButton(label: 'Biometrics', route: Routes.BIOMETRICS),
    FeatureButton(label: 'Forms', route: Routes.CREDENTIALS_FORM),
    FeatureButton(label: 'Onboarding', route: Routes.ONBOARDING),
    FeatureButton(label: 'Chips', route: Routes.CHIPS),
    FeatureButton(label: 'Protected', route: Routes.PROTECTED),
    FeatureButton(label: 'Peripherals', route: Routes.PERIPHERALS),
    FeatureButton(label: 'OCR Flow', route: Routes.OCR),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: featureButtons.length,
        separatorBuilder: (context, index) {
          return const SizedBox(height: 8);
        },
        itemBuilder: (context, index) {
          return ElevatedButton(
            onPressed: () => Get.toNamed(featureButtons[index].route),
            child: Text(featureButtons[index].label),
          );
        },
      ),
    );
  }
}
