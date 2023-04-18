import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/biometrics_controller.dart';

class BiometricsView extends GetView<BiometricsController> {
  const BiometricsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Biometrics'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Obx(
          () => ListView(
            clipBehavior: Clip.none,
            children: [
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 16),
                  children: [
                    const TextSpan(
                      text: 'Status: ',
                      style: TextStyle(color: Colors.black54),
                    ),
                    TextSpan(
                      text: controller.authorized,
                      style: TextStyle(
                        color: controller.authorized == 'Authorized'
                            ? Colors.green
                            : controller.authorized == 'Authenticating'
                                ? Get.theme.colorScheme.primary
                                : Get.theme.colorScheme.error,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                padding: const EdgeInsets.all(40),
                icon: const Icon(Icons.fingerprint),
                iconSize: 128,
                onPressed: controller.supportState == SupportState.supported
                    ? () => controller.authenticate()
                    : null,
                color: Get.theme.colorScheme.primary,
              ),
              const Divider(height: 80),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 16),
                  children: [
                    const TextSpan(
                      text: 'Support: ',
                      style: TextStyle(color: Colors.black54),
                    ),
                    TextSpan(
                      text: controller.supportState.name.capitalize,
                      style: TextStyle(
                        color: controller.supportState == SupportState.supported
                            ? Colors.green
                            : Get.theme.colorScheme.error,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Returns true if device is capable of checking biometrics or is able to fail over to device credentials.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 4),
              OutlinedButton(
                onPressed: () => controller.checkBiometricSupport(),
                child: Visibility(
                  visible: controller.isCheckingDevice.isFalse,
                  replacement: const Center(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ),
                  child: const Text('Check Device Support'),
                ),
              ),
              const Divider(height: 80),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 16),
                  children: [
                    const TextSpan(
                      text: 'Biometrics Available: ',
                      style: TextStyle(color: Colors.black54),
                    ),
                    TextSpan(
                      text: controller.canCheckBiometrics ? "Yes" : "No",
                      style: TextStyle(
                        color: controller.canCheckBiometrics
                            ? Colors.green
                            : Get.theme.colorScheme.error,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Returns true if device is capable of checking biometrics.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 4),
              OutlinedButton(
                onPressed: () => controller.checkBiometrics(),
                child: Visibility(
                  visible: controller.isCheckingBiometrics.isFalse,
                  replacement: const Center(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ),
                  child: const Text('Check Biometrics Availability'),
                ),
              ),
              const Divider(height: 80),
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                  text: 'Biometrics List: ',
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: controller.availableBiometrics.length,
                itemBuilder: (context, index) {
                  var bm = controller.availableBiometrics[index];
                  var prefix = index + 1;
                  return Text('$prefix - $bm');
                },
              ),
              const SizedBox(height: 4),
              const Text(
                'Returns a list of enrolled biometrics.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 4),
              OutlinedButton(
                onPressed: () => controller.getAvailableBiometrics(),
                child: Visibility(
                  visible: controller.isListingBiometrics.isFalse,
                  replacement: const Center(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ),
                  child: const Text('List Biometrics'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
