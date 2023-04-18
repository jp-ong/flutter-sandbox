import 'package:get/get.dart';

import '../controllers/onboarding_start_controller.dart';

class OnboardingStartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingStartController>(
      () => OnboardingStartController(),
    );
  }
}
