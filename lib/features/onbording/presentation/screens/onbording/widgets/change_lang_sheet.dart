import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants/app_icons.dart';
import '../../../../../../core/constants/app_text_style_enum.dart';
import '../../../../../../core/shared_widgets/bottom_sheets/app_bottom_sheet.dart';
import '../../../../../../core/shared_widgets/form_builder/app_button/app_button.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../generated/translations.g.dart';

showChangeLanguageSheet(BuildContext context) {
  AppBottomSheetModel appBottomSheetModel = AppBottomSheetModel(
      context: context,
      title: tr(LocaleKeys.choose_language),
      iconName: AppIcons.languageIcon,
      height: 275.h,
      buttons: [
        AppButton.basic(
            onTap: () {
              context.setLocale(Locale('en', 'US'));
              context.router.pop();
            },
            title: "English"),
        AppButton.basic(
          onTap: () {
            context.setLocale(Locale('ar', 'EG'));
            context.router.pop();
          },
          title: "العربية",
          appButtonConfig: AppButtonConfig(
            backgroundColor: AppColors.offWhite2,
            textStyle: AppTextStyle.grayW400F16,
          ),
        ),
      ]);
  AppBottomSheet.changeLanguage(appBottomSheetModel);
}
