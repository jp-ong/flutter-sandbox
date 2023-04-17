import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/credentials_form_controller.dart';

class CredentialsFormView extends GetView<CredentialsFormController> {
  const CredentialsFormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Credentials'),
        centerTitle: true,
      ),
      body: Form(
        key: controller.credentialInfoKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            usernameField(),
            formGap(),
            emailField(),
            formGap(),
            passwordField(),
            formGap(),
            ElevatedButton(
              onPressed: () => controller.submitForm(),
              child: const Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }

  Widget usernameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Username', style: Get.textTheme.labelMedium),
        const SizedBox(height: 4),
        TextFormField(
          controller: controller.usernameController,
          decoration: const InputDecoration(),
          style: Get.textTheme.bodyMedium,
          validator: (value) => value!.isEmpty ? 'Username is required' : null,
        ),
      ],
    );
  }

  Widget emailField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email', style: Get.textTheme.labelMedium),
        const SizedBox(height: 4),
        TextFormField(
          controller: controller.emailController,
          decoration: const InputDecoration(),
          validator: (value) => value!.isEmpty ? 'Email is required' : null,
        ),
      ],
    );
  }

  Widget passwordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Password', style: Get.textTheme.labelMedium),
        const SizedBox(height: 4),
        TextFormField(
          controller: controller.passwordController,
          decoration: const InputDecoration(),
          obscureText: true,
          validator: (value) => value!.isEmpty ? 'Password is required' : null,
        ),
      ],
    );
  }

  SizedBox formGap() {
    return const SizedBox(height: 16);
  }
}
