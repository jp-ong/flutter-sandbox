import 'package:get/get.dart';

import '../controllers/biometrics_controller.dart';

class BiometricsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BiometricsController>(
      () => BiometricsController(),
    );
  }
}
