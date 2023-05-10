import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/peripherals_controller.dart';

class PeripheralsView extends GetView<PeripheralsController> {
  const PeripheralsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peripherals'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Obx(() {
            var isCameraInitialized = controller.isCameraInitialized.isTrue;
            return ElevatedButton(
              onPressed: isCameraInitialized
                  ? controller.stopCamera
                  : controller.startCamera,
              child: Text(isCameraInitialized ? 'Stop Camera' : 'Start Camera'),
            );
          }),
          Obx(() {
            var isCameraInitialized = controller.isCameraInitialized.isTrue;
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 10,
              ),
              itemCount: 100,
              itemBuilder: (context, index) {
                return Container(
                  child: isCameraInitialized
                      ? SizedBox(
                          width: 400,
                          height: 400,
                          child: CameraPreview(
                            controller.cameraController.value!,
                          ),
                        )
                      : const Text('Initialize Camera'),
                );
              },
            );
          }),
          IconButton(
            onPressed: () async {
              var camera = controller.cameraController.value!;
              camera.setZoomLevel(await camera.getMaxZoomLevel());
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
