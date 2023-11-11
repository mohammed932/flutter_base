import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_test/core/global_widgets/form_builder/app_text.dart';

import '../../generated/translations.g.dart';
import '../constants/app_text_style_enum.dart';

class PrivacyWarning extends StatelessWidget {
  const PrivacyWarning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.w,
      alignment: Alignment.center,
      child: AppText(
        title: tr(LocaleKeys.privacy_policy_warning),
        style: AppTextStyle.grayW400F16,
      )..modifyStyle(modifiedStyle: TextStyle(height: 1.6)),
    );
  }
}
