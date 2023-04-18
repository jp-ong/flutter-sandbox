import 'package:flutter/material.dart';
import 'package:flutter_sandbox/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_2_controller.dart';

class Onboarding2View extends GetView<Onboarding2Controller> {
  const Onboarding2View({Key? key}) : super(key: key);
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
                        'Step 2',
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
                        child: const Text('Back to Step 1'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Get.toNamed(Routes.ONBOARDING_END),
                        child: const Text('Proceed to final step'),
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
