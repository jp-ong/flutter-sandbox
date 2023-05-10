import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/peripherals_controller.dart';

class PeripheralsView extends GetView<PeripheralsController> {
  const PeripheralsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PeripheralView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PeripheralView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
