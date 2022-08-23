import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:mojol/app/shared/color.dart';
import 'package:mojol/app/shared/fonts.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: heading1,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 36,
            vertical: 80,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Text(
                  'Name',
                  style: heading3,
                ),
              ),
              const SizedBox(height: 7),
              InputForm(
                controller: controller.nameTextEdtController,
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Text(
                  'Email',
                  style: heading3,
                ),
              ),
              const SizedBox(height: 7),
              InputForm(
                controller: controller.emailTextEdtController,
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Text(
                  'Password',
                  style: heading3,
                ),
              ),
              const SizedBox(height: 7),
              Obx(
                () => InputForm(
                  controller: controller.passwTextEditingController,
                  passwordVisible: controller.isPasswordVisible.value,
                  isPassword: true,
                  onPressed: controller.onPressed,
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: heading3,
                  ),
                ),
              ),
              const SizedBox(height: 80),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Already have an account? ',
                    style: textReg15.copyWith(
                      color: greyColor2,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign In',
                        style: textReg15.copyWith(
                          color: deepBlue,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InputForm extends StatelessWidget {
  const InputForm(
      {Key? key,
      required this.controller,
      this.passwordVisible = false,
      this.onPressed,
      this.isPassword = false})
      : super(key: key);

  final TextEditingController controller;
  final bool? passwordVisible;
  final bool? isPassword;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autocorrect: false,
      style: heading3.copyWith(
        color: blackColor,
      ),
      obscureText: passwordVisible != false ? true : false,
      decoration: isPassword != false
          ? InputDecoration(
              border: InputBorder.none,
              enabled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              fillColor: greyColor3,
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              suffixIcon: IconButton(
                onPressed: onPressed,
                splashRadius: 15,
                icon: Icon(
                  passwordVisible != false
                      ? IconlyLight.show
                      : IconlyLight.hide,
                  color: blackColor,
                ),
              ),
            )
          : InputDecoration(
              border: InputBorder.none,
              enabled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              fillColor: greyColor3,
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            ),
    );
  }
}
