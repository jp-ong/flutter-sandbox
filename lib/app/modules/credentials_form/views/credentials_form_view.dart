import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            usernameField(),
            formGap(),
            emailField(),
            formGap(),
            passwordField(),
            passwordChecklist(),
            formGap(),
            passwordConfirmField(),
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
          inputFormatters: [
            LengthLimitingTextInputFormatter(18),
          ],
          validator: (value) {
            return value!.isEmpty || value.length < 4
                ? 'Username must be 4 to 18 characters'
                : null;
          },
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
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(),
          validator: (value) => value!.isEmpty || !value.isEmail
              ? 'Valid email is required'
              : null,
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

  Widget passwordConfirmField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Re-enter Password', style: Get.textTheme.labelMedium),
        const SizedBox(height: 4),
        TextFormField(
          controller: controller.passwordController,
          decoration: const InputDecoration(),
          obscureText: true,
          validator: (value) => controller.passwordConfirmController.value !=
                  controller.passwordController.value
              ? 'Passwords must match'
              : null,
        ),
      ],
    );
  }

  Widget passwordChecklist() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        formGap(),
        passwordChecklistItem('At least 8 characters', false),
        passwordChecklistItem('At least one uppercase letter', true),
        passwordChecklistItem('At least one lowercase letter', true),
        passwordChecklistItem('At least one number', true),
        passwordChecklistItem(
            'At least on special character (e.g. !@#\$%)', true),
      ],
    );
  }

  Widget passwordChecklistItem(message, isFullfilled) {
    return Row(
      children: [
        Icon(
          isFullfilled ? Icons.check : Icons.close,
          color: isFullfilled ? Colors.green : Colors.red,
        ),
        const SizedBox(width: 8),
        Text(
          message,
          style: Get.textTheme.displayMedium,
        ),
      ],
    );
  }

  SizedBox formGap() {
    return const SizedBox(height: 16);
  }
}
