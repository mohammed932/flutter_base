import 'package:flutter/material.dart';
import 'package:interview_test/core/themes/app_colors.dart';

abstract class ICustomThemeData {
  TextStyle get blackW500F10;
}

class CustomLightTheme implements ICustomThemeData {
  CustomLightTheme._();

  static CustomLightTheme shared = CustomLightTheme._();
  @override
  
  //BLACK//
  TextStyle get blackW500F10 => const TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w500,
        fontSize: 10,
      );
}

class CustomDarkTheme implements ICustomThemeData {
  CustomDarkTheme._();

  static CustomDarkTheme shared = CustomDarkTheme._();

  @override
  //BLACK//
  TextStyle get blackW500F10 => const TextStyle();
}
