import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interview_test/core/constants/app_text_style_enum.dart';
import 'package:interview_test/core/themes/app_colors.dart';

import '../app_text.dart';
import 'icon_widget.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onTap;
  final String? title;
  final bool isFlatButton;
  final IconConfig? iconConfig;
  final FabIconConfig? fabIconConfig;
  final AppButtonConfig? appButtonConfig;
  final bool haveShadow;
  final bool isLoading;
  const AppButton._({
    Key? key,
    required this.onTap,
    this.appButtonConfig,
    this.title,
    this.fabIconConfig,
    this.iconConfig,
    this.haveShadow = false,
    this.isFlatButton = false,
    this.isLoading = false,
  }) : super(key: key);

  factory AppButton.basic({
    required VoidCallback onTap,
    required String title,
    AppButtonConfig? appButtonConfig,
    bool haveShadow = false,
    IconConfig? iconConfig,
    bool? isLoading,
  }) {
    return AppButton._(
      title: title,
      onTap: onTap,
      haveShadow: haveShadow,
      appButtonConfig: appButtonConfig,
      iconConfig: iconConfig,
      isLoading: isLoading ?? false,
    );
  }

  factory AppButton.icon({
    String? title,
    required VoidCallback onTap,
    required IconConfig iconConfig,
    bool haveShadow = false,
    AppButtonConfig? appButtonConfig,
  }) {
    return AppButton._(
      title: title,
      onTap: onTap,
      haveShadow: haveShadow,
      iconConfig: iconConfig,
      appButtonConfig: appButtonConfig,
    );
  }

  factory AppButton.outline({
    required String title,
    required VoidCallback onTap,
    IconConfig? iconConfig,
    bool haveShadow = false,
    AppButtonConfig? appButtonConfig,
  }) {
    return AppButton._(
      title: title,
      onTap: onTap,
      isFlatButton: true,
      haveShadow: haveShadow,
      iconConfig: iconConfig,
      appButtonConfig: appButtonConfig,
    );
  }

  factory AppButton.fabIcon({
    String? title,
    required VoidCallback onTap,
    bool haveShadow = false,
    required FabIconConfig fabIconConfig,
    AppButtonConfig? appButtonConfig,
  }) {
    return AppButton._(
      onTap: onTap,
      fabIconConfig: fabIconConfig,
      haveShadow: haveShadow,
      appButtonConfig: appButtonConfig,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: haveShadow
            ? [
                BoxShadow(
                  color: AppColors.black
                      .withOpacity(0.2), // Adjust the shadow color and opacity
                  spreadRadius:
                      5, // Increase the spread radius for a larger shadow
                  blurRadius:
                      15, // Increase the blur radius for a softer shadow
                  offset: const Offset(
                      0, 5), // Adjust the vertical offset for a lower shadow
                ),
              ]
            : null,
      ),
      child: ElevatedButton(
        onPressed: isLoading ? null : onTap,
        child: isLoading
            ? CircularProgressIndicator.adaptive()
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      showProperIconWidget(),
                      if (title != null && iconConfig != null)
                        SizedBox(width: 5),
                      if (title != null)
                        AppText(
                            title: title!,
                            style: appButtonConfig?.textStyle ??
                                AppTextStyle.offwhite2W400F20),
                    ],
                  ),
                ],
              ),
        style: ElevatedButton.styleFrom(
          backgroundColor: getBackgroundColor(),
          padding: appButtonConfig?.padding ?? _scaledPadding(context),
          side: getBorder(),
          minimumSize: Size(
              appButtonConfig?.width ?? 345.w, appButtonConfig?.height ?? 50.w),
          fixedSize: Size(
              appButtonConfig?.width ?? 345.w, appButtonConfig?.height ?? 50.w),
        ),
      ),
    );
  }

  Widget showProperIconWidget() {
    if (iconConfig != null) {
      return IconWidget(iconConfig: iconConfig!);
    } else if (fabIconConfig != null) {
      return Padding(
        padding: const EdgeInsets.all(8),
        child: FaIcon(
          fabIconConfig!.icon,
          size: fabIconConfig?.size ?? 16,
          color: fabIconConfig?.color ?? AppColors.white,
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Color? getBackgroundColor() {
    if (isFlatButton) {
      return AppColors.white;
    } else if (appButtonConfig?.backgroundColor != null) {
      return appButtonConfig?.backgroundColor;
    } else {
      return AppColors.primaryGreen;
    }
  }

  BorderSide? getBorder() {
    if (isFlatButton) {
      return const BorderSide(color: AppColors.primaryGreen, width: 2.0);
    } else if (appButtonConfig?.border != null) {
      return appButtonConfig!.border;
    } else {
      return null;
    }
  }

  EdgeInsetsGeometry _scaledPadding(BuildContext context) {
    return ButtonStyleButton.scaledPadding(
      const EdgeInsets.symmetric(horizontal: 16),
      const EdgeInsets.symmetric(horizontal: 8),
      const EdgeInsets.symmetric(horizontal: 4),
      MediaQuery.maybeOf(context)?.textScaleFactor ?? 1,
    );
  }
}

class IconConfig {
  final String name;
  final double? width;
  final double? height;
  final Color? color;
  final Color? bkcolor;
  final VoidCallback? onTap;
  final EdgeInsets? padding;
  final bool? isCircle;
  IconConfig({
    required this.name,
    this.height,
    this.width,
    this.color,
    this.onTap,
    this.padding,
    this.bkcolor,
    this.isCircle,
  });
}

class AppButtonConfig {
  final Color? backgroundColor;
  final BorderSide? border;
  final double? width;
  final double? height;

  final EdgeInsetsGeometry? padding;
  final AppTextStyle? textStyle;
  AppButtonConfig({
    this.backgroundColor,
    this.border,
    this.padding,
    this.height,
    this.width,
    this.textStyle,
  });
}

class FabIconConfig {
  final IconData icon;
  final double? size;
  final Color? color;
  FabIconConfig({required this.icon, this.color, this.size});
}
