import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  TextEditingController nameTextEdtController = TextEditingController();
  TextEditingController emailTextEdtController = TextEditingController();
  TextEditingController passwTextEditingController = TextEditingController();
  var isPasswordVisible = true.obs;
  @override
  void dispose() {
    nameTextEdtController.dispose();
    emailTextEdtController.dispose();
    passwTextEditingController.dispose();
    super.dispose();
  }

  void onPressed() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}
