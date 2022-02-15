import '../widgets/auth_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/core.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);

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
                images: controller.signupImages,
                title: 'Sign Up!',
                subtitle:
                    'Travel and live the new experience of\nrent the cars from your home',
              ),
              const SizedBox(
                height: 10,
              ),
              _buildForm(),
              CustomButton(
                label: 'Sign Up',
                onTap: () => Get.offNamed(Routes.home),
              ),
              const SizedBox(
                height: 4,
              ),
              RowAuthWidget(
                firstLabel: "Already have an account?\t",
                secondLabel: 'Sign in',
                onTap: () => Get.offNamed(Routes.signin),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildForm() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      children: const [
        CustomTextField(
          label: 'Username',
          hint: 'Enter your username',
          keyboardType: TextInputType.name,
        ),
        SizedBox(
          height: 10,
        ),
        CustomTextField(
          label: 'Email',
          hint: 'Enter your email',
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(
          height: 10,
        ),
        CustomTextField(
          label: 'Phone',
          hint: '+970 59 983 8964',
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(
          height: 10,
        ),
        CustomTextField(
          label: 'Password',
          hint: '********',
          obscureText: true,
        ),
        SizedBox(
          height: 10,
        ),
        CustomTextField(
          label: 'Confirm Password',
          hint: '********',
          obscureText: true,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'By signing up, I agree to the Car Rental App\'s user agreement and privacy policy',
          style: TextStyle(fontSize: 16),
        ),
      ],
    ),
  );
}
