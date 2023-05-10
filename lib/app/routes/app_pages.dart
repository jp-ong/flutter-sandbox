import 'package:get/get.dart';

import '../modules/biometrics/bindings/biometrics_binding.dart';
import '../modules/biometrics/views/biometrics_view.dart';
import '../modules/chips/bindings/chips_binding.dart';
import '../modules/chips/views/chips_view.dart';
import '../modules/credentials_form/bindings/credentials_form_binding.dart';
import '../modules/credentials_form/views/credentials_form_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/ocr/bindings/ocr_binding.dart';
import '../modules/ocr/ocr_id/bindings/ocr_id_binding.dart';
import '../modules/ocr/ocr_id/views/ocr_id_view.dart';
import '../modules/ocr/ocr_ready/bindings/ocr_ready_binding.dart';
import '../modules/ocr/ocr_ready/views/ocr_ready_view.dart';
import '../modules/ocr/ocr_start/bindings/ocr_start_binding.dart';
import '../modules/ocr/ocr_start/views/ocr_start_view.dart';
import '../modules/ocr/ocr_wallet/bindings/ocr_wallet_binding.dart';
import '../modules/ocr/ocr_wallet/views/ocr_wallet_view.dart';
import '../modules/ocr/views/ocr_view.dart';
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
import '../modules/peripherals/bindings/peripherals_binding.dart';
import '../modules/peripherals/views/peripherals_view.dart';
import '../modules/profile_form/bindings/profile_form_binding.dart';
import '../modules/profile_form/views/profile_form_view.dart';
import '../modules/protected/bindings/protected_binding.dart';
import '../modules/protected/password_auth/bindings/password_auth_binding.dart';
import '../modules/protected/password_auth/views/password_auth_view.dart';
import '../modules/protected/protected_section/bindings/protected_section_binding.dart';
import '../modules/protected/protected_section/views/protected_section_view.dart';
import '../modules/protected/views/protected_view.dart';

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
    GetPage(
      name: _Paths.PROTECTED,
      page: () => const ProtectedView(),
      binding: ProtectedBinding(),
      children: [
        GetPage(
          name: _Paths.PASSWORD_AUTH,
          page: () => const PasswordAuthView(),
          binding: PasswordAuthBinding(),
        ),
        GetPage(
          name: _Paths.PROTECTED_SECTION,
          page: () => const ProtectedSectionView(),
          binding: ProtectedSectionBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.PERIPHERALS,
      page: () => const PeripheralsView(),
      binding: PeripheralsBinding(),
    ),
    GetPage(
      name: _Paths.OCR,
      page: () => const OcrView(),
      binding: OcrBinding(),
      children: [
        GetPage(
          name: _Paths.OCR_WALLET,
          page: () => const OcrWalletView(),
          binding: OcrWalletBinding(),
        ),
        GetPage(
          name: _Paths.OCR_START,
          page: () => const OcrStartView(),
          binding: OcrStartBinding(),
        ),
        GetPage(
          name: _Paths.OCR_READY,
          page: () => const OcrReadyView(),
          binding: OcrReadyBinding(),
        ),
        GetPage(
          name: _Paths.OCR_ID,
          page: () => const OcrIdView(),
          binding: OcrIdBinding(),
        ),
      ],
    ),
  ];
}
