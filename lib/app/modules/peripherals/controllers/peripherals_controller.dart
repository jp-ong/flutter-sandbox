import 'package:camera/camera.dart';
import 'package:get/get.dart';

class PeripheralsController extends GetxController {
  Rxn<CameraController> cameraController = Rxn<CameraController>();
  List<CameraDescription> cameras = [];
  RxBool isCameraInitialized = false.obs;

  void initCamera() async {
    try {
      cameras = await availableCameras();
      cameraController.value = CameraController(
        cameras[1],
        ResolutionPreset.low,
        enableAudio: false,
        imageFormatGroup: ImageFormatGroup.jpeg,
      );
      await cameraController.value?.initialize();
    } catch (e) {}
  }

  void startCamera() async {
    try {
      await cameraController.value?.startImageStream((image) => print('Test'));
      isCameraInitialized.value = true;
    } catch (e) {
      return;
    }
  }

  void stopCamera() async {
    try {
      await cameraController.value?.stopImageStream();
      isCameraInitialized.value = false;
    } catch (e) {
      return;
    }
  }

  @override
  void onInit() {
    initCamera();
    super.onInit();
  }

  @override
  void onClose() {
    cameraController.value?.dispose();
    super.onClose();
  }
}
