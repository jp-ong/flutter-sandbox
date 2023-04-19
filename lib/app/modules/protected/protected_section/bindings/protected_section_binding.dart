import 'package:get/get.dart';

import '../controllers/protected_section_controller.dart';

class ProtectedSectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProtectedSectionController>(
      () => ProtectedSectionController(),
    );
  }
}
