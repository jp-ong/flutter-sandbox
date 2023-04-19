import 'package:flutter/material.dart';
import 'package:flutter_sandbox/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/protected_section_controller.dart';

class ProtectedSectionView extends GetView<ProtectedSectionController> {
  const ProtectedSectionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Protected Section'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You are now viewing an authentication-protected page.',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
