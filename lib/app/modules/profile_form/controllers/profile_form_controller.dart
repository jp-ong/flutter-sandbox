import 'package:flutter/widgets.dart';
// import 'package:flutter_sandbox/app/routes/app_pages.dart';
import 'package:get/get.dart';

class ProfileFormController extends GetxController {
  final personalInfoFormKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  void submitForm() {
    if (personalInfoFormKey.currentState!.validate()) {
      // Get.toNamed(Routes.);
    }
  }
}
