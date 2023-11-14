import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_test/core/constants/app_text_style_enum.dart';

import '../../themes/app_colors.dart';
import '../form_builder/app_text.dart';

class AppTextFormField extends StatelessWidget {
  AppTextFormField({
    Key? key,
    required this.labelText,
    this.hintText,
    this.controller,
    this.validator,
    this.inputs,
    this.keyboard,
    this.suffixIcon,
    this.suffix,
    this.obscure = false,
    this.onSave,
    this.error,
    this.onChanged,
    this.initValue,
    this.enabled = true,
    this.filledColor,
    this.readOnly = false,
    this.prefixIcon,
    this.maxLines = 3,
    this.inputStyle,
    this.onFieldSubmitted,
    this.width,
    this.height,
    this.onTap,
    this.node,
    this.suffixText,
    this.isTextEmpty = true,
    this.suffixStyle,
    this.maxLength,
    this.type = FormTextType.full,
  }) : super(key: key);
  final String labelText;
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputs;
  final TextInputType? keyboard;
  final Widget? suffixIcon;
  final String? error;
  final bool obscure;
  final Function? onSave;
  final Function? onChanged;
  final String? initValue;
  final bool enabled;
  Color? filledColor;
  final Widget? prefixIcon;
  final bool readOnly;
  final int maxLines;
  final Widget? suffix;
  final TextStyle? inputStyle;
  final Function(String?)? onFieldSubmitted;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final FocusNode? node;
  final String? suffixText;
  final bool isTextEmpty;
  final TextStyle? suffixStyle;
  final int? maxLength;
  final FormTextType type;
  factory AppTextFormField.basic({
    required String labelText,
    String? hintText,
    TextEditingController? controller,
    String? Function(String?)? validator,
    List<TextInputFormatter>? inputs,
    TextInputType? keyboard,
    Widget? suffixIcon,
    String? error,
    bool obscure = false,
    Function? onSave,
    Function? onChanged,
    String? initValue,
    bool enabled = true,
    Color? filledColor,
    Widget? prefixIcon,
    bool readOnly = false,
    int maxLines = 3,
    Widget? suffix,
    TextStyle? inputStyle,
    Function(String?)? onFieldSubmitted,
    VoidCallback? onTap,
    double? width,
    double? height,
    FocusNode? node,
    String? suffixText,
    bool isTextEmpty = true,
    TextStyle? suffixStyle,
    int? maxLength,
  }) {
    return AppTextFormField(
      labelText: labelText,
      hintText: hintText,
      controller: controller,
      validator: validator,
      inputs: inputs,
      keyboard: keyboard,
      suffixIcon: suffixIcon,
      suffix: suffix,
      obscure: obscure,
      onSave: onSave,
      error: error,
      onChanged: onChanged,
      initValue: initValue,
      enabled: enabled,
      filledColor: filledColor,
      readOnly: readOnly,
      prefixIcon: prefixIcon,
      maxLines: maxLines,
      inputStyle: inputStyle,
      onFieldSubmitted: onFieldSubmitted,
      width: width,
      height: height,
      onTap: onTap,
      node: node,
      suffixText: suffixText,
      isTextEmpty: isTextEmpty,
      suffixStyle: suffixStyle,
      maxLength: maxLength,
      type: FormTextType.basic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return type == FormTextType.basic
        ? buildFormField()
        : SizedBox(
            width: width,
            child: Column(
              children: [
                Container(
                  alignment: AlignmentDirectional.topStart,
                  child: AppText(
                    title: tr(labelText),
                    style: AppTextStyle.primaryGreenW500F16,
                  ),
                ),
                SizedBox(height: 8.h),
                buildFormField(),
              ],
            ),
          );
  }

  BorderRadius get radius => BorderRadius.circular(8);

  SizedBox buildFormField() {
    return SizedBox(
      width: width,
      child: TextFormField(
        onChanged: onChanged == null ? null : (value) => onChanged!(value),
        enabled: enabled,
        maxLines: keyboard == TextInputType.multiline ? maxLines : 1,
        onFieldSubmitted: onFieldSubmitted == null
            ? null
            : (value) => onFieldSubmitted!(value),
        initialValue: initValue,
        focusNode: node,
        onTap: onTap,
        readOnly: onTap != null ? true : readOnly,
        style: inputStyle,
        maxLength: maxLength,
        decoration: InputDecoration(
          errorStyle: const TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.w500, height: 1),
          hintText: hintText,
          filled: true,
          fillColor: filledColor ?? AppColors.white,
          errorMaxLines: 1,
          border: OutlineInputBorder(
            borderRadius: radius,
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: radius,
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: radius,
            borderSide: BorderSide.none,
          ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          suffix: suffix,
          errorText: error,
          suffixText: suffixText,
          suffixStyle: suffixStyle,
          hintStyle: TextStyle(
            fontSize: 16,
            color: AppColors.gray,
          ),
        ),
        keyboardType: keyboard,
        inputFormatters: inputs,
        controller: controller,
        obscureText: obscure,
        obscuringCharacter: '*',
        validator: validator,
        onSaved: (value) {
          if (onSave != null) {
            onSave!(value);
          }
        },
      ),
    );
  }
}

enum FormTextType { full, basic }
