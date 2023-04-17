import 'package:get/get.dart';

import '../modules/biometrics/bindings/biometrics_binding.dart';
import '../modules/biometrics/views/biometrics_view.dart';
import '../modules/credentials_form/bindings/credentials_form_binding.dart';
import '../modules/credentials_form/views/credentials_form_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/profile_form/bindings/profile_form_binding.dart';
import '../modules/profile_form/views/profile_form_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BIOMETRICS,
      page: () => const BiometricsView(),
      binding: BiometricsBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_FORM,
      page: () => const ProfileFormView(),
      binding: FormsBinding(),
    ),
    GetPage(
      name: _Paths.CREDENTIALS_FORM,
      page: () => const CredentialsFormView(),
      binding: CredentialsFormBinding(),
    ),
  ];
}
