import 'package:flutter/material.dart';

import '../themes/custom_theme_data.dart';

extension CustomTheme on ThemeData {
  ICustomThemeData get custom {
    return brightness == Brightness.dark
        ? CustomDarkTheme.shared
        : CustomLightTheme.shared;
  }
}
