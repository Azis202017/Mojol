import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mojol/app/routes/app_pages.dart';

import '../../../../main.dart';

class SignupController extends GetxController {
  TextEditingController nameTextEdtController = TextEditingController();
  TextEditingController emailTextEdtController = TextEditingController();
  TextEditingController passwTextEditingController = TextEditingController();
  var isPasswordVisible = true.obs;
  @override
  void dispose() {
    super.dispose();

    nameTextEdtController.dispose();
    emailTextEdtController.dispose();
    passwTextEditingController.dispose();
  }

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  void registerUser() async {
    final User? user = (await _firebaseAuth
            .createUserWithEmailAndPassword(
      email: emailTextEdtController.text,
      password: passwTextEditingController.text,
    )
            .catchError((errMsg) {
      Get.dialog(
        Text(errMsg.toString()),
      );
    }))
        .user;
    if (user != null) {
      usersRef.child(user.uid);
      Map dataRegister = {
        "name": nameTextEdtController.text,
        "email": emailTextEdtController.text,
      };
      usersRef.child(user.uid).set(dataRegister);
      Get.offAndToNamed(Routes.HOME);
    } else {
      Get.dialog(const Text('Error'));
    }
  }

  void onPressed() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}
