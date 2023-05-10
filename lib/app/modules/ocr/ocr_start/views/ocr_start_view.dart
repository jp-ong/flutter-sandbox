import 'package:flutter/material.dart';
import 'package:flutter_sandbox/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/ocr_start_controller.dart';

class OcrStartView extends GetView<OcrStartController> {
  const OcrStartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add ID to your wallet'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Before we start',
            style: Get.textTheme.headlineLarge,
          ),
          const SizedBox(height: 16),
          Text(
            'By continuing, you allow UBX to share your information for your application with our partner.',
            style: Get.textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          Text(
            'Prepare the valid ID selected for verification and ensure that the details you will provide matches the details on your ID.',
            style: Get.textTheme.displayMedium,
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              Get.toNamed(Routes.OCR_READY);
            },
            child: const Text('Get Started'),
          ),
        ],
      ),
    );
  }
}
