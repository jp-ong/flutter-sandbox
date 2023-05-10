import 'package:get/get.dart';

import '../controllers/ocr_start_controller.dart';

class OcrStartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OcrStartController>(
      () => OcrStartController(),
    );
  }
}
