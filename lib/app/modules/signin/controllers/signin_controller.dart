import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  TextEditingController emailTextEdtController = TextEditingController();
  TextEditingController passwTextEditingController = TextEditingController();
  var isPasswordVisible = true.obs;
  @override
  void dispose() {
    emailTextEdtController.dispose();
    passwTextEditingController.dispose();
    super.dispose();
  }

  

  void onPressed() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}
