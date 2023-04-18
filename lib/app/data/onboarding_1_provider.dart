import 'package:get/get.dart';

class Onboarding1Provider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }
}
