import 'package:get/get.dart';

import '../controllers/peripheral_controller.dart';

class PeripheralBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PeripheralController>(
      () => PeripheralController(),
    );
  }
}
