import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:interview_test/core/constants/app_text_style_enum.dart';
import 'package:interview_test/core/themes/app_colors.dart';

import '../form_builder/app_button/app_button.dart';
import '../form_builder/app_button/icon_widget.dart';
import '../form_builder/app_text.dart';

class AppBottomSheet {
  final AppBottomSheetModel appBottomSheetModel;

  final SheetType type;
  AppBottomSheet._({required this.appBottomSheetModel, required this.type});
  factory AppBottomSheet.changeLanguage(
      AppBottomSheetModel appBottomSheetModel) {
    return AppBottomSheet._(
        appBottomSheetModel: appBottomSheetModel, type: SheetType.language)
      .._showBottomSheet(
          _getSheetContent(appBottomSheetModel, SheetType.language));
  }

  _showBottomSheet(Widget child) {
    showModalBottomSheet(
      isScrollControlled: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(13),
          topRight: Radius.circular(13),
        ),
      ),
      backgroundColor: Colors.white,
      context: appBottomSheetModel.context,
      builder: (context) => SizedBox(
        height: appBottomSheetModel.height ?? 400.h,
        child: child,
      ),
    );
  }
}

Widget _getSheetContent(
  AppBottomSheetModel appBottomSheetModel,
  SheetType type,
) {
  return Container(
    child: Column(
      children: [
        Gap(24.h),
        IconWidget(
            iconConfig: IconConfig(
          name: appBottomSheetModel.iconName,
          color: AppColors.primaryGreen,
          width: 40.w,
          height: 40.h,
        )),
        Gap(16.h),
        AppText(
          title: tr(appBottomSheetModel.title),
          style: AppTextStyle.primaryGreenW400F24,
        ),
        ...appBottomSheetModel.buttons.map(
          (e) => Container(
            margin: EdgeInsets.only(top: 16.h),
            child: e,
          ),
        ),
      ],
    ),
  );
}

enum SheetType { language }

class AppBottomSheetModel {
  final BuildContext context;
  final String iconName;
  final String title;
  final double? height;
  final List<AppButton> buttons;

  AppBottomSheetModel(
      {required this.context,
      required this.iconName,
      required this.title,
      this.height,
      this.buttons = const []});
}
