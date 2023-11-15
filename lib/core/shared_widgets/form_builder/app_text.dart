import 'package:flutter/material.dart';
import 'package:interview_test/core/extentions/app_themes_extensions.dart';

import '../../constants/app_text_style_enum.dart';

// ignore: must_be_immutable
class AppText extends StatelessWidget {
  final AppTextStyle style;
  final String title;
  @override
  Key? key;
  StrutStyle? strutStyle;
  TextAlign? textAlign;
  TextDirection? textDirection;
  Locale? locale;
  bool? softWrap;
  TextOverflow? overflow;
  double? textScaleFactor;
  int? maxLines;
  String? semanticsLabel;
  TextWidthBasis? textWidthBasis;
  TextHeightBehavior? textHeightBehavior;

  TextStyle? _modifiedStyle;
  AppText({
    super.key,
    required this.title,
    required this.style,
  });

  AppText.full({
    required this.title,
    required this.style,
    this.key,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  }) : super(key: null);

  modifyStyle({required TextStyle modifiedStyle}) {
    _modifiedStyle = modifiedStyle;
  }

  static TextStyle getStyle(
      {required BuildContext ctx, required AppTextStyle style}) {
    switch (style) {
      case AppTextStyle.blackW500F10:
        return Theme.of(ctx).custom.blackW500F10;

      case AppTextStyle.offwhite2W400F20:
        return Theme.of(ctx).custom.offwhite2W400F20;
      case AppTextStyle.offWhite2W400F32:
        return Theme.of(ctx).custom.offWhite2W400F32;
      case AppTextStyle.primaryGreenW400F30:
        return Theme.of(ctx).custom.primaryGreenW400F30;
      case AppTextStyle.primaryGreenW400F20:
        return Theme.of(ctx).custom.primaryGreenW400F20;
      case AppTextStyle.grayW400F16:
        return Theme.of(ctx).custom.grayW400F16;
      case AppTextStyle.primaryGreenW500F16:
        return Theme.of(ctx).custom.primaryGreenW500F16;
      case AppTextStyle.primaryGreenW400F24:
        return Theme.of(ctx).custom.primaryGreenW400F24;
      case AppTextStyle.darkGreenW400F20:
        return Theme.of(ctx).custom.darkGreenW400F20;
      case AppTextStyle.redW400F16:
        return Theme.of(ctx).custom.redW400F16;
      case AppTextStyle.whiteW400F12:
        return Theme.of(ctx).custom.whiteW400F12;
      case AppTextStyle.whiteW400F18:
        return Theme.of(ctx).custom.whiteW400F18;
      case AppTextStyle.blackW400F12:
        return Theme.of(ctx).custom.blackW400F12;
      case AppTextStyle.blackW400F18:
        return Theme.of(ctx).custom.blackW400F18;
      case AppTextStyle.primaryGreenW400F12:
        return Theme.of(ctx).custom.primaryGreenW400F12;
      case AppTextStyle.primaryGreenW400F18:
        return Theme.of(ctx).custom.primaryGreenW400F18;
      case AppTextStyle.grayW400F20:
        return Theme.of(ctx).custom.grayW400F20;

      default:
        return Theme.of(ctx).custom.blackW500F10;
    }
  }

  TextStyle _copyStyleWith({required TextStyle currentStyle}) {
    if (_modifiedStyle != null) {
      var modified = currentStyle.copyWith(
        background: _modifiedStyle?.background ?? currentStyle.background,
        debugLabel: _modifiedStyle?.debugLabel ?? currentStyle.debugLabel,
        decoration: _modifiedStyle?.decoration ?? currentStyle.decoration,
        decorationColor:
            _modifiedStyle?.decorationColor ?? currentStyle.decorationColor,
        decorationStyle:
            _modifiedStyle?.decorationStyle ?? currentStyle.decorationStyle,
        decorationThickness: _modifiedStyle?.decorationThickness ??
            currentStyle.decorationThickness,
        leadingDistribution: _modifiedStyle?.leadingDistribution ??
            currentStyle.leadingDistribution,
        shadows: _modifiedStyle?.shadows ?? currentStyle.shadows,
        fontSize: _modifiedStyle?.fontSize ?? currentStyle.fontSize,
        fontStyle: _modifiedStyle?.fontStyle ?? currentStyle.fontStyle,
        wordSpacing: _modifiedStyle?.wordSpacing ?? currentStyle.wordSpacing,
        letterSpacing:
            _modifiedStyle?.letterSpacing ?? currentStyle.letterSpacing,
        backgroundColor:
            _modifiedStyle?.backgroundColor ?? currentStyle.backgroundColor,
        color: _modifiedStyle?.color ?? currentStyle.color,
        fontFamily: _modifiedStyle?.fontFamily ?? currentStyle.fontFamily,
        fontFamilyFallback: _modifiedStyle?.fontFamilyFallback ??
            currentStyle.fontFamilyFallback,
        fontFeatures: _modifiedStyle?.fontFeatures ?? currentStyle.fontFeatures,
        fontWeight: _modifiedStyle?.fontWeight ?? currentStyle.fontWeight,
        foreground: _modifiedStyle?.foreground ?? currentStyle.foreground,
        height: _modifiedStyle?.height ?? currentStyle.height,
        inherit: _modifiedStyle?.inherit ?? currentStyle.inherit,
        locale: _modifiedStyle?.locale ?? currentStyle.locale,
        overflow: _modifiedStyle?.overflow ?? currentStyle.overflow,
        textBaseline: _modifiedStyle?.textBaseline ?? currentStyle.textBaseline,
      );
      return modified;
    }
    return currentStyle;
  }

  @override
  Widget build(BuildContext context) {
    var agriStyle = getStyle(ctx: context, style: style);
    var modifiedStyle = _copyStyleWith(currentStyle: agriStyle);
    return Text(
      title,
      textAlign: textAlign,
      textScaleFactor: textScaleFactor ?? 1,
      style: modifiedStyle,
      key: key,
      strutStyle: strutStyle,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
  }
}
