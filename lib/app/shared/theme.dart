import 'package:flutter/material.dart';
import 'package:mojol/app/shared/color.dart';

ThemeData theme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: deepBlue,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: deepBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 0,
    ),
  ),
  scaffoldBackgroundColor: Colors.white
);
