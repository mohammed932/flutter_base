import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:interview_test/generated/translations.g.dart';

extension StringValidator on String? {
  String? isNullOrEmpty(BuildContext context, {String? message}) {
    if (this == null || this!.trim().isEmpty) {
      return message ?? tr(LocaleKeys.field_required);
    }
    return null;
  }

  String? isValidNumber(BuildContext context, {String? message}) {
    if (this == null || this!.isEmpty) {
      return tr(LocaleKeys.field_required);
    } else if (int.tryParse(this!) == null) {
      return message ?? tr(LocaleKeys.invalid_number);
    } else {
      return null;
    }
  }

  String? isValidEmail(BuildContext context, {String? message}) {
    if (this == null || this!.isEmpty) {
      return tr(LocaleKeys.field_required);
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this!)) {
      return message ?? tr(LocaleKeys.invalid_email);
    }
    return null;
  }

  String? isValidPassword(BuildContext context, {String? message}) {
    if (this == null || this!.isEmpty) {
      return tr(LocaleKeys.field_required);
    } else if (this!.length < 6) {
      return message ?? tr(LocaleKeys.invalid_password);
    }
    return null;
  }
}
