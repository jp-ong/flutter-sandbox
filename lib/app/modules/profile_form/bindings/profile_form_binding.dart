import 'package:get/get.dart';

import '../controllers/profile_form_controller.dart';

class FormsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileFormController>(
      () => ProfileFormController(),
    );
  }
}
