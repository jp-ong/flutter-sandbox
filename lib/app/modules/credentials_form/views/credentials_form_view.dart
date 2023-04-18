import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/credentials_form_controller.dart';

class CredentialsFormView extends GetView<CredentialsFormController> {
  const CredentialsFormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Credentials'),
          centerTitle: true,
        ),
        body: Form(
          key: controller.credentialInfoKey,
          onChanged: () => controller.onFormChange(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Obx(
                        () => ElevatedButton(
                          onPressed: controller.isFormClean.isTrue
                              ? () => controller.submitForm()
                              : null,
                          child: const Text('Continue'),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
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
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller.usernameController,
          decoration: const InputDecoration(),
          style: Get.textTheme.bodyMedium,
          inputFormatters: [
            LengthLimitingTextInputFormatter(18),
          ],
          validator: (value) {
            bool isInvalid = value!.isEmpty || value.length < 4;
            controller.validateUsername(!isInvalid);
            return isInvalid ? 'Username must be 4 to 18 characters' : null;
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
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller.emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(),
          validator: (value) {
            bool isInvalid = value!.isEmpty || value.length < 4;
            controller.validateEmail(!isInvalid);
            return isInvalid ? 'Email must be valid' : null;
          },
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
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller.passwordController,
          decoration: const InputDecoration(),
          obscureText: true,
          validator: (value) =>
              !controller.isPasswordValid() ? 'Password must be valid' : null,
          onChanged: (value) => controller.onPasswordChange(value),
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
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller.passwordConfirmController,
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
    return Obx(
      () => AnimatedOpacity(
        duration: const Duration(milliseconds: 500),
        opacity: controller.isPasswordChecklistVisible.value ? 1.0 : 0.0,
        child: Visibility(
          visible: controller.isPasswordChecklistVisible.value,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              formGap(),
              Obx(
                () => passwordChecklistItem(
                  'At least 8 characters',
                  controller.hasMinChar.value,
                ),
              ),
              Obx(
                () => passwordChecklistItem(
                  'At least one uppercase letter',
                  controller.hasUppercase.value,
                ),
              ),
              Obx(
                () => passwordChecklistItem(
                  'At least one lowercase letter',
                  controller.hasLowercase.value,
                ),
              ),
              Obx(
                () => passwordChecklistItem(
                  'At least one number',
                  controller.hasNumber.value,
                ),
              ),
              Obx(
                () => passwordChecklistItem(
                  'At least on special character (e.g. !@#\$%)',
                  controller.hasSpecialChar.value,
                ),
              ),
            ],
          ),
        ),
      ),
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
