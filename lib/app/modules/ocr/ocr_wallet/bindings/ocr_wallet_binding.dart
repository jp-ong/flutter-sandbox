import 'package:get/get.dart';

import '../controllers/ocr_wallet_controller.dart';

class OcrWalletBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OcrWalletController>(
      () => OcrWalletController(),
    );
  }
}
