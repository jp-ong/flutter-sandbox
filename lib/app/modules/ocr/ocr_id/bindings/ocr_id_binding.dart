import 'package:get/get.dart';

import '../controllers/ocr_id_controller.dart';

class OcrIdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OcrIdController>(
      () => OcrIdController(),
    );
  }
}
