import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mojol/app/routes/app_pages.dart';

import '../../../shared/color.dart';
import '../../../shared/fonts.dart';
import '../../../widgets/input_widget.dart';
import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign In',
          style: heading1,
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
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
                    'Sign In',
                    style: heading3,
                  ),
                ),
              ),
              const SizedBox(height: 80),
              Center(
                child: TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.SIGNUP);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Don’t have an account?  ',
                      style: textReg15.copyWith(
                        color: greyColor2,
                      ),
                      children: [
                        TextSpan(
                          text: 'Sign Up',
                          style: textReg15.copyWith(
                            color: deepBlue,
                            decoration: TextDecoration.underline,
                          ),
                        )
                      ],
                    ),
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
