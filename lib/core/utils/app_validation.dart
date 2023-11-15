import 'package:easy_localization/easy_localization.dart';
import 'package:interview_test/generated/translations.g.dart';

mixin ValidationMixin {
  String? isNullOrEmpty(String? value) {
    return value == null || value.isEmpty
        ? tr(LocaleKeys.field_required)
        : null;
  }
}
