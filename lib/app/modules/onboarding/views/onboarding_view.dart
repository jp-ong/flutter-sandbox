import 'package:flutter/material.dart';
import 'package:flutter_sandbox/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
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
                        'Onboarding',
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
                        onPressed: () => Get.offAllNamed(Routes.HOME),
                        child: const Text('Back to Home'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Get.toNamed(Routes.ONBOARDING_START),
                        child: const Text('Getting Started'),
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
