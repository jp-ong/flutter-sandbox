import 'package:get/get.dart';

import '../controllers/onboarding_end_controller.dart';

class OnboardingEndBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingEndController>(
      () => OnboardingEndController(),
    );
  }
}
