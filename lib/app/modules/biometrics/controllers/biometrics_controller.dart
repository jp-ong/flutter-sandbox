import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth_android/local_auth_android.dart';
import 'package:local_auth_ios/local_auth_ios.dart';

enum SupportState {
  unknown,
  supported,
  unsupported,
}

class BiometricsController extends GetxController {
  final LocalAuthentication auth = LocalAuthentication();
  SupportState supportState = SupportState.unknown;
  bool canCheckBiometrics = false;
  List<BiometricType> availableBiometrics = [];
  RxString authorized = 'Not Authorized'.obs;
  RxBool isAuthenticating = false.obs;
  RxBool isCheckingDevice = false.obs;
  RxBool isCheckingBiometrics = false.obs;
  RxBool isListingBiometrics = false.obs;
  bool stopBiometrics = false;

  Future<void> checkBiometricSupport() async {
    isCheckingDevice.value = true;
    await delay(seconds: 0);

    try {
      bool isSupported = await auth.isDeviceSupported();
      supportState =
          isSupported ? SupportState.supported : SupportState.unsupported;
    } on PlatformException {
      supportState = SupportState.unsupported;
    } finally {
      isCheckingDevice.value = false;
    }
  }

  Future<void> checkBiometrics() async {
    isCheckingBiometrics.value = true;
    await delay(seconds: 0);
    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
    } on PlatformException {
      canCheckBiometrics = false;
    } finally {
      isCheckingBiometrics.value = false;
    }
  }

  Future<void> getAvailableBiometrics() async {
    isListingBiometrics.value = true;
    await delay(seconds: 0);
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } on PlatformException {
      availableBiometrics = [];
    } finally {
      isListingBiometrics.value = false;
    }
  }

  void authenticate() async {
    isAuthenticating.value = true;
    authorized.value = 'Authenticating';

    bool authenticated = false;

    try {
      authenticated = await auth.authenticate(
        localizedReason: 'Confirm Using Your Fingerprint',
        authMessages: const [
          AndroidAuthMessages(cancelButton: 'Use Password'),
          IOSAuthMessages(cancelButton: 'Use Password'),
        ],
        options: const AuthenticationOptions(stickyAuth: true),
      );
    } on PlatformException {
      authorized.value = 'Error';
    }
    authorized.value = authenticated ? 'Authorized' : 'Not Authorized';
    isAuthenticating.value = false;
  }

  Future<void> delay({int seconds = 2}) {
    return Future.delayed(Duration(seconds: seconds), () => null);
  }

  @override
  void onReady() async {
    await Future.wait([
      checkBiometricSupport(),
      checkBiometrics(),
    ]);

    if (supportState == SupportState.supported &&
        canCheckBiometrics &&
        !stopBiometrics) {
      authenticate();
    }
  }

  @override
  void onClose() async {
    stopBiometrics = true;
  }
}
