import 'package:flutter/material.dart';
import 'package:flutter_sandbox/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_start_controller.dart';

class OnboardingStartView extends GetView<OnboardingStartController> {
  const OnboardingStartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                        'Getting Started',
                        style: Get.textTheme.headlineLarge,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'You are about to start the onboarding process. Do not resist.',
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
                        onPressed: () => Get.back(),
                        child: const Text('Back to Onboarding'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Get.toNamed(Routes.ONBOARDING_1),
                        child: const Text('Proceed to step 1'),
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
