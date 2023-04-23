import 'package:get/get.dart';

import '../controllers/protected_controller.dart';

class ProtectedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProtectedController>(
      () => ProtectedController(),
    );
  }
}
