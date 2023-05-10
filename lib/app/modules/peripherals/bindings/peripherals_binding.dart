import 'package:get/get.dart';

import '../controllers/peripherals_controller.dart';

class PeripheralsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PeripheralsController>(
      () => PeripheralsController(),
    );
  }
}
