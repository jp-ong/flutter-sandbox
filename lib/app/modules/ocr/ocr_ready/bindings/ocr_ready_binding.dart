import 'package:get/get.dart';

import '../controllers/ocr_ready_controller.dart';

class OcrReadyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OcrReadyController>(
      () => OcrReadyController(),
    );
  }
}
