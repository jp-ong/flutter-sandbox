import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forms_controller.dart';

class FormsView extends GetView<FormsController> {
  const FormsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FormsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FormsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
