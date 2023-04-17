import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_form_controller.dart';

class ProfileFormView extends GetView<ProfileFormController> {
  const ProfileFormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Form'),
        centerTitle: true,
      ),
      body: Form(
        key: controller.personalInfoFormKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            firstNameField(),
            formGap(),
            lastNameField(),
            formGap(),
            ElevatedButton(
              onPressed: () => controller.submitForm(),
              child: const Text('Proceed'),
            ),
          ],
        ),
      ),
    );
  }

  Widget firstNameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('First Name', style: Get.textTheme.labelMedium),
        const SizedBox(height: 4),
        TextFormField(
          controller: controller.firstNameController,
          decoration: const InputDecoration(),
          validator: (value) =>
              value!.isEmpty ? 'First name is required' : null,
        ),
      ],
    );
  }

  Widget lastNameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Last Name', style: Get.textTheme.labelMedium),
        const SizedBox(height: 4),
        TextFormField(
          controller: controller.lastNameController,
          decoration: const InputDecoration(),
          validator: (value) => value!.isEmpty ? 'Last name is required' : null,
        ),
      ],
    );
  }

  SizedBox formGap() {
    return const SizedBox(height: 16);
  }
}
