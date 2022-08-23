
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mojol/app/shared/color.dart';

import '../shared/fonts.dart';

class InputForm extends StatelessWidget {
  const InputForm({
    Key? key,
    required this.controller,
    this.passwordVisible = false,
    this.onPressed,
    this.isPassword = false,
  }) : super(key: key);

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
