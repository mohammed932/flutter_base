import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

abstract class AppThemes {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: background,
    canvasColor: Colors.white,
    primaryColor: AppColors.primaryGreen,
    appBarTheme: const AppBarTheme(
      shadowColor: tabBarShadow,
      foregroundColor: AppColors.offWhite,
      backgroundColor: AppColors.offWhite,
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: AppColors.offWhite),
    ),
    bottomAppBarTheme:
        const BottomAppBarTheme(color: AppColors.offWhite),
    
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color.fromARGB(255, 28, 28, 28),
    focusColor: AppColors.primaryGreen,
    primaryColor: AppColors.primaryGreen,
    colorScheme: ColorScheme.fromSwatch(
            primarySwatch:
                MaterialColor(AppColors.primaryGreen.value, primarySwatch))
        .copyWith(background: AppColors.black),
  );

  static const background = Color(0xffFAF9F4);
  static const tabBarShadow = Color.fromARGB(12, 0, 0, 0);
}
