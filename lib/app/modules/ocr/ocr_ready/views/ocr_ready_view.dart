import 'package:flutter/material.dart';
import 'package:flutter_sandbox/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/ocr_ready_controller.dart';

class OcrReadyView extends GetView<OcrReadyController> {
  const OcrReadyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Identity Verification'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Get ready to scan your ID',
            style: Get.textTheme.headlineLarge,
          ),
          const SizedBox(height: 16),
          Text(
            'To verify your identity, please provide a valid ID. Make sure that you are in a well-lit place and the ID photo is not blurry.',
            style: Get.textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          Text(
            'By continuing, you agree that we\'ll use your photo for verification purposes. We will not store or keep any data in it afterwards.',
            style: Get.textTheme.displayMedium,
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              Get.toNamed(Routes.OCR_ID);
            },
            child: const Text('Continue'),
          ),
        ],
      ),
    );
  }
}
