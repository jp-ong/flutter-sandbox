import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ocr_id_controller.dart';

class OcrIdView extends GetView<OcrIdController> {
  const OcrIdView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add ID to your wallet'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 16,
        ),
        children: [
          Text(
            'Select the type of document you wish to add to your identity wallet.',
            style: Get.textTheme.labelMedium,
          ),
          const SizedBox(height: 24),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 4,
                  color: Color.fromRGBO(0, 0, 0, 0.12),
                ),
              ],
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                walletId('SSS ID'),
                walletId('PRC ID'),
                walletId('Postal ID'),
                walletId('Passport'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget walletId(String title) {
    return ListTile(
      title: Text(title, style: Get.textTheme.labelMedium),
      trailing: const Icon(Icons.chevron_right),
    );
  }
}
