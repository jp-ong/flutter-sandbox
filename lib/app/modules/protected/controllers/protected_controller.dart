import 'package:flutter_sandbox/app/controllers/local_authentication_controller.dart';
import 'package:get/get.dart';

class ProtectedController extends GetxController {
  final LocalAuthenticationController localAuthenticationController =
      Get.find<LocalAuthenticationController>();
}
