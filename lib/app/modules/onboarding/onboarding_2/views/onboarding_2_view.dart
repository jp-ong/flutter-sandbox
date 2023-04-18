import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_2_controller.dart';

class Onboarding2View extends GetView<Onboarding2Controller> {
  const Onboarding2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Onboarding2View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Onboarding2View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
