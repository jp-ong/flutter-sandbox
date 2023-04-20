import 'package:flutter_sandbox/app/controllers/local_authentication_controller.dart';
import 'package:get/get.dart';

import '../controllers/protected_controller.dart';

class ProtectedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProtectedController>(
      () => ProtectedController(),
    );

    Get.lazyPut<LocalAuthenticationController>(
      () => LocalAuthenticationController(),
    );
  }
}
