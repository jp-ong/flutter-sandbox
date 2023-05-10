import 'package:flutter/material.dart';
import 'package:flutter_sandbox/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/ocr_wallet_controller.dart';

class OcrWalletView extends GetView<OcrWalletController> {
  const OcrWalletView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Identity Wallet'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 16,
        ),
        children: [
          Text(
            'Manage your verified IDs of your identity wallet here.',
            style: Get.textTheme.displayMedium,
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: Text(
                  'My IDs',
                  style: Get.textTheme.labelMedium,
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed(Routes.OCR_START);
                },
                child: const Text('+ Add Card'),
              ),
            ],
          ),
          const SizedBox(height: 16),
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
                walletId('SSS ID', 'Sep 22, 2022', 'Verified'),
                walletId('PRC ID', 'Jul 1, 2022', 'Expires'),
                walletId('Postal ID', 'Jul 1, 2022', 'Submitted'),
                walletId('Passport', 'April 1, 2022', 'Rejected'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget walletId(String title, String date, String status) {
    return ListTile(
      title: Text(title, style: Get.textTheme.labelMedium),
      subtitle: Text(
        'Expires on $date \u2022 $status',
        style: Get.textTheme.labelSmall,
      ),
      leading: const Icon(Icons.image_rounded),
      minLeadingWidth: 0,
      trailing: const Icon(Icons.chevron_right),
    );
  }
}
