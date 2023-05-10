import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/peripheral_controller.dart';

class PeripheralView extends GetView<PeripheralController> {
  const PeripheralView({Key? key}) : super(key: key);
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
