import 'package:get/get.dart';

import '../controllers/chips_controller.dart';

class ChipsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChipsController>(
      () => ChipsController(),
    );
  }
}
