import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_end_controller.dart';

class OnboardingEndView extends GetView<OnboardingEndController> {
  const OnboardingEndView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OnboardingEndView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OnboardingEndView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
