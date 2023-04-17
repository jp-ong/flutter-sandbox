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
  String authorized = 'Not Authorized';
  RxBool isAuthenticating = false.obs;
  RxBool isCheckingDevice = false.obs;
  RxBool isCheckingBiometrics = false.obs;
  RxBool isListingBiometrics = false.obs;
  bool stopBiometrics = false;

  Future<void> checkBiometricSupport() async {
    isCheckingDevice.value = true;
    await delay(seconds: 1);

    auth.isDeviceSupported().then((bool isSupported) {
      supportState =
          isSupported ? SupportState.supported : SupportState.unsupported;
      isCheckingDevice.value = false;
    });
  }

  Future<void> checkBiometrics() async {
    isCheckingBiometrics.value = true;
    await delay(seconds: 2);
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
    await delay(seconds: 3);
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
    authorized = 'Authenticating';

    bool authenticated = false;

    try {
      authenticated = await auth.authenticate(
        localizedReason: 'Confirm Using Your Fingerprint',
        authMessages: const [
          AndroidAuthMessages(cancelButton: 'Use Password'),
          IOSAuthMessages(cancelButton: 'Use Password'),
        ],
        options:
            const AuthenticationOptions(stickyAuth: true, biometricOnly: true),
      );
    } on PlatformException {
      authorized = 'Error';
    } finally {
      authorized = authenticated ? 'Authorized' : 'Not Authorized';
      isAuthenticating.value = false;
    }
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
