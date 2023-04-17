import 'package:flutter/widgets.dart';
import 'package:flutter_sandbox/app/routes/app_pages.dart';
import 'package:get/get.dart';

class CredentialsFormController extends GetxController {
  final credentialInfoKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void submitForm() {
    if (credentialInfoKey.currentState!.validate()) {
      Get.toNamed(Routes.PROFILE_FORM);
    }
  }
}
