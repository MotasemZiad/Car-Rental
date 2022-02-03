import 'package:car_rental/pages/auth/widgets/auth_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/core.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              AuthHeaderWidget(
                images: controller.signinImages,
                title: 'Welcome!',
                subtitle:
                    'Travel and live the new experience of\nrent the cars from your home',
              ),
              const SizedBox(
                height: 10,
              ),
              _buildForm(),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                label: 'Sign In',
                onTap: () => Get.offNamed(Routes.home),
              ),
              const SizedBox(
                height: 10,
              ),
              RowAuthWidget(
                firstLabel: "Don't have an account?\t",
                secondLabel: 'Sign up for free',
                onTap: () => Get.offNamed(Routes.signup),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          const CustomTextField(
            label: 'Email',
            hint: 'Enter your email',
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(
            label: 'Password',
            hint: '********',
            obscureText: true,
          ),
          const SizedBox(
            height: 4,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () => Get.toNamed(Routes.forgetPassword),
              child: Text(
                "Forgot your password?",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
