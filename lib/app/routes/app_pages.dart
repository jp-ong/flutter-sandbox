import 'package:get/get.dart';

import '../modules/biometrics/bindings/biometrics_binding.dart';
import '../modules/biometrics/views/biometrics_view.dart';
import '../modules/chips/bindings/chips_binding.dart';
import '../modules/chips/views/chips_view.dart';
import '../modules/credentials_form/bindings/credentials_form_binding.dart';
import '../modules/credentials_form/views/credentials_form_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/onboarding_1/bindings/onboarding_1_binding.dart';
import '../modules/onboarding/onboarding_1/views/onboarding_1_view.dart';
import '../modules/onboarding/onboarding_2/bindings/onboarding_2_binding.dart';
import '../modules/onboarding/onboarding_2/views/onboarding_2_view.dart';
import '../modules/onboarding/onboarding_end/bindings/onboarding_end_binding.dart';
import '../modules/onboarding/onboarding_end/views/onboarding_end_view.dart';
import '../modules/onboarding/onboarding_start/bindings/onboarding_start_binding.dart';
import '../modules/onboarding/onboarding_start/views/onboarding_start_view.dart';
import '../modules/onboarding/views/onboarding_view.dart';
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
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
      children: [
        GetPage(
          name: _Paths.ONBOARDING_1,
          page: () => const Onboarding1View(),
          binding: Onboarding1Binding(),
        ),
        GetPage(
          name: _Paths.ONBOARDING_2,
          page: () => const Onboarding2View(),
          binding: Onboarding2Binding(),
        ),
        GetPage(
          name: _Paths.ONBOARDING_END,
          page: () => const OnboardingEndView(),
          binding: OnboardingEndBinding(),
        ),
        GetPage(
          name: _Paths.ONBOARDING_START,
          page: () => const OnboardingStartView(),
          binding: OnboardingStartBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.CHIPS,
      page: () => const ChipsView(),
      binding: ChipsBinding(),
    ),
  ];
}
