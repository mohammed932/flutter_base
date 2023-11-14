import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:interview_test/generated/translations.g.dart';

import '../constants/app_icons.dart';
import '../constants/app_text_style_enum.dart';
import '../themes/app_colors.dart';
import 'form_builder/app_button/app_button.dart';
import 'form_builder/app_button/icon_widget.dart';
import 'form_builder/app_text.dart';

class BannerContainerModel {
  final String title;
  final String body;
  final VoidCallback onTap;
  final String icon;
  final Color? bkColor;

  BannerContainerModel({
    required this.title,
    required this.body,
    required this.onTap,
    required this.icon,
    this.bkColor,
  });
}

class BannerContainer extends StatelessWidget {
  const BannerContainer({super.key, required this.bannerContainerModel});
  final BannerContainerModel bannerContainerModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: bannerContainerModel.onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
          color: bannerContainerModel.bkColor ?? AppColors.offWhite2,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: AppColors.gray.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                children: [
                  IconWidget(
                    iconConfig: IconConfig(name: bannerContainerModel.icon),
                  ),
                  Gap(10.w),
                  AppText(
                    title: tr(bannerContainerModel.title),
                    style: AppTextStyle.primaryGreenW400F18,
                  ),
                ],
              ),
            ),
            Gap(10.h),
            AppText.full(
              title: tr(bannerContainerModel.body),
              maxLines: 3,
              style: AppTextStyle.primaryGreenW400F12,
            ),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppText.full(
                      title: tr(LocaleKeys.apply_now),
                      maxLines: 3,
                      style: AppTextStyle.primaryGreenW400F18),
                  Gap(10.w),
                  IconWidget(
                    iconConfig:
                        IconConfig(name: AppIcons.greenArrowCircleRightIcon),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
