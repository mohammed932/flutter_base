import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants/app_text_style_enum.dart';
import '../../../../../../core/shared_widgets/form_builder/app_text.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../generated/translations.g.dart';

class ScreenSeparator extends StatelessWidget {
  const ScreenSeparator({super.key, this.color, this.style});
  final Color? color;
  final AppTextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomLine(color: color),
          Spacer(),
          Container(
              child: AppText(
                  title: tr(LocaleKeys.oR),
                  style: style ?? AppTextStyle.offwhite2W400F20)),
          Spacer(),
          CustomLine(color: color),
        ],
      ),
    );
  }
}

class CustomLine extends StatelessWidget {
  const CustomLine({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 19.h,
      width: 140.w,
      child: Column(
        children: [
          Spacer(),
          Container(
            width: 140.w,
            height: 1.h,
            color: color ?? AppColors.offWhite2,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
