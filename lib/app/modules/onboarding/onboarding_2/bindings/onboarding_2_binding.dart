import 'package:get/get.dart';

import '../controllers/onboarding_2_controller.dart';

class Onboarding2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Onboarding2Controller>(
      () => Onboarding2Controller(),
    );
  }
}
