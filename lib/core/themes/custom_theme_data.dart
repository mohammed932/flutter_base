import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_test/core/themes/app_colors.dart';

abstract class ICustomThemeData {
  TextStyle get blackW500F10;
  TextStyle get offwhite2W400F20;
  TextStyle get offWhite2W400F32;
  TextStyle get primaryGreenW400F20;
  TextStyle get primaryGreenW400F24;
  TextStyle get primaryGreenW400F30;
  TextStyle get grayW400F16;
}

class CustomLightTheme implements ICustomThemeData {
  CustomLightTheme._();

  static CustomLightTheme shared = CustomLightTheme._();
  @override

  //BLACK//
  TextStyle get blackW500F10 => TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w500,
        fontSize: 10.sp,
      );

  //OFFWHITE2//
  @override
  TextStyle get offwhite2W400F20 => TextStyle(
        color: AppColors.offWhite2,
        fontWeight: FontWeight.w400,
        fontSize: 20.sp,
      );
  @override
  TextStyle get offWhite2W400F32 => TextStyle(
        color: AppColors.offWhite2,
        fontWeight: FontWeight.w400,
        fontSize: 32.sp,
      );

  // Primary Green  //
  @override
  TextStyle get primaryGreenW400F20 => TextStyle(
        color: AppColors.primaryGreen,
        fontWeight: FontWeight.w400,
        fontSize: 20.sp,
      );
  TextStyle get primaryGreenW400F24 => TextStyle(
        color: AppColors.primaryGreen,
        fontWeight: FontWeight.w400,
        fontSize: 24.sp,
      );
  TextStyle get primaryGreenW400F30 => TextStyle(
        color: AppColors.primaryGreen,
        fontWeight: FontWeight.w400,
        fontSize: 30.sp,
      );
  // GRAY  //
  TextStyle get grayW400F16 => TextStyle(
        color: AppColors.gray,
        fontWeight: FontWeight.w400,
        fontSize: 16.sp,
      );
}

class CustomDarkTheme implements ICustomThemeData {
  CustomDarkTheme._();

  static CustomDarkTheme shared = CustomDarkTheme._();

  @override
  //BLACK//
  TextStyle get blackW500F10 => const TextStyle();

  @override
  // TODO: implement offWhite2W400F32
  TextStyle get offWhite2W400F32 => throw UnimplementedError();

  @override
  // TODO: implement offwhite2W400F20
  TextStyle get offwhite2W400F20 => throw UnimplementedError();

  @override
  // TODO: implement primaryGreenW400F20
  TextStyle get primaryGreenW400F20 => throw UnimplementedError();

  @override
  // TODO: implement primaryGreenW400F30
  TextStyle get primaryGreenW400F30 => throw UnimplementedError();

  @override
  // TODO: implement grayW400F16
  TextStyle get grayW400F16 => throw UnimplementedError();

  @override
  // TODO: implement primaryGreenW400F24
  TextStyle get primaryGreenW400F24 => throw UnimplementedError();
}
