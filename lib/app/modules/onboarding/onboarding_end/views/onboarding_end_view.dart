import 'package:flutter/material.dart';
import 'package:flutter_sandbox/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_end_controller.dart';

class OnboardingEndView extends GetView<OnboardingEndController> {
  const OnboardingEndView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Congratulations',
                        style: Get.textTheme.headlineLarge,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'You are onboarded. Go back home please.',
                  style: Get.textTheme.bodyMedium,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => Get.offAndToNamed(Routes.ONBOARDING),
                        child: const Text('Restart'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => Get.back(),
                        child: const Text('Back to Step 2'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Get.offAllNamed(Routes.HOME),
                        child: const Text('Go Home'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
