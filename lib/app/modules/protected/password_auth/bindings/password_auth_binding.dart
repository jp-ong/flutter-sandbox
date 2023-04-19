import 'package:get/get.dart';

import '../controllers/password_auth_controller.dart';

class PasswordAuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PasswordAuthController>(
      () => PasswordAuthController(),
    );
  }
}
