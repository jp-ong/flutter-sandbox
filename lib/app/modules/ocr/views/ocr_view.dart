import 'package:flutter/material.dart';
import 'package:flutter_sandbox/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/ocr_controller.dart';

class OcrView extends GetView<OcrController> {
  const OcrView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OCR Flow'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'As a user, I want to add another card to my identity wallet.',
                style: Get.textTheme.headlineLarge,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.OCR_WALLET);
                },
                child: const Text('View All Cards'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
