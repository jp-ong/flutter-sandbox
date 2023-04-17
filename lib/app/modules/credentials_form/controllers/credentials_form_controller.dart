import 'package:flutter/widgets.dart';
import 'package:flutter_sandbox/app/routes/app_pages.dart';
import 'package:get/get.dart';

class CredentialsFormController extends GetxController {
  final credentialInfoKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();

  RxBool hasMinChar = false.obs;
  RxBool hasUppercase = false.obs;
  RxBool hasLowercase = false.obs;
  RxBool hasNumber = false.obs;
  RxBool hasSpecialChar = false.obs;
  RxBool isPasswordChecklistVisible = false.obs;

  void onPasswordChange(String password) {
    hasMinChar.value = password.length >= 8;
    hasUppercase.value = password.contains(RegExp(r'[A-Z]'));
    hasLowercase.value = password.contains(RegExp(r'[a-z]'));
    hasNumber.value = password.contains(RegExp(r'[0-9]'));
    hasSpecialChar.value = password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    isPasswordChecklistVisible.value = true;
  }

  bool isPasswordValid() {
    return hasMinChar.value &&
        hasUppercase.value &&
        hasLowercase.value &&
        hasNumber.value &&
        hasSpecialChar.value;
  }

  void submitForm() {
    isPasswordChecklistVisible.value = true;
    if (credentialInfoKey.currentState!.validate()) {
      Get.toNamed(Routes.PROFILE_FORM);
    }
  }
}
