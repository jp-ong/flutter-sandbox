import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth_android/local_auth_android.dart';
import 'package:local_auth_ios/types/auth_messages_ios.dart';

class LocalAuthenticationController extends GetxController {
  final _auth = LocalAuthentication();

  /// Authenticates using the device's enrolled security
  /// such as pattern, pin, password, fingerprint, or face scan.
  ///
  /// - `onSuccess`
  ///   - Authentication prompt received correct information of pin, password, fingerprint, etc.
  /// - `onFail`
  ///   - Exited without completing the authentication flow.
  ///   - Device did not have any security enrolled.
  ///   - Local authentication was disabled for whatever reason (locked out, etc).
  /// - `localizedReason` is the message to show to user while prompting them for authentication.
  /// - `options` [AuthenticationOptions]
  /// - `androidAuthMessages` [AndroidAuthMessages]
  /// - `iosAuthMessages` [IOSAuthMessages]
  void authenticate({
    required VoidCallback onSuccess,
    required VoidCallback onFail,
    String localizedReason = ' ',
    AuthenticationOptions options = const AuthenticationOptions(),
    AndroidAuthMessages androidAuthMessages = const AndroidAuthMessages(),
    IOSAuthMessages iosAuthMessages = const IOSAuthMessages(),
  }) async {
    bool isAuthenticated = false;
    try {
      isAuthenticated = await _auth.authenticate(
          localizedReason: localizedReason.isEmpty ? ' ' : localizedReason,
          options: options,
          authMessages: [androidAuthMessages, iosAuthMessages]);
    } on PlatformException {
      isAuthenticated = false;
    } finally {
      isAuthenticated ? onSuccess() : onFail();
    }
  }
}
