import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:interview_test/core/constants/app_icons.dart';
import 'package:interview_test/core/constants/app_text_style_enum.dart';
import 'package:interview_test/core/global_widgets/form_builder/app_button/app_button.dart';
import 'package:interview_test/core/global_widgets/form_builder/app_button/icon_widget.dart';
import 'package:interview_test/core/global_widgets/form_builder/app_text.dart';
import 'package:interview_test/core/themes/app_colors.dart';
import 'package:interview_test/generated/translations.g.dart';

class HomeGridView extends StatelessWidget {
  const HomeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    List<GridItemModel> _items = [
      GridItemModel(
        icon: AppIcons.structuralIcon,
        title: LocaleKeys.calculate_unit,
        desc: LocaleKeys.calculate_des,
        bkColor: AppColors.primaryGreen,
        arrowIcon: AppIcons.arrowCircleRightIcon,
        onTap: () {},
      ),
      GridItemModel(
        icon: AppIcons.galleryIcon,
        title: LocaleKeys.view_gallery,
        desc: LocaleKeys.view_gallery_des,
        bkColor: Color(0xffFBFCF4),
        bodyTextStyle: AppTextStyle.primaryGreenW400F12,
        titleTextStyle: AppTextStyle.primaryGreenW400F18,
        onTap: () {},
      ),
      GridItemModel(
        icon: AppIcons.colorWandSharptIcon,
        title: LocaleKeys.generate_by_ai,
        desc: LocaleKeys.generate_by_ai,
        bkColor: AppColors.lightYellow,
        iconColor: AppColors.yellow,
        bodyTextStyle: AppTextStyle.blackW400F12,
        titleTextStyle: AppTextStyle.blackW400F18,
        onTap: () {},
      ),
      GridItemModel(
        icon: AppIcons.designIcon,
        title: LocaleKeys.design_your_space,
        desc: LocaleKeys.design_des,
        bkColor: Color(0xffFBFCF4),
        bodyTextStyle: AppTextStyle.primaryGreenW400F12,
        titleTextStyle: AppTextStyle.primaryGreenW400F18,
        onTap: () {},
      ),
    ];

    double screenWidth = MediaQuery.of(context).size.width;

    double crossAxisSpacing = screenWidth > 600 ? 16.0 : 8.0;
    double mainAxisSpacing = screenWidth > 600 ? 16.0 : 8.0;
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing,
      ),
      itemCount: _items.length, // Number of items in the grid
      itemBuilder: (BuildContext context, int index) {
        return GridItem(gridItemModel: _items[index]);
      },
    );
  }
}

class GridItem extends StatelessWidget {
  const GridItem({super.key, required this.gridItemModel});
  final GridItemModel gridItemModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: gridItemModel.onTap,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: gridItemModel.bkColor,
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
        padding: EdgeInsets.only(
          left: 12.w,
          right: 12.w,
          top: 12.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconWidget(
              iconConfig: IconConfig(
                padding: EdgeInsets.all(8),
                bkcolor: gridItemModel.iconColor ?? AppColors.lighGreen,
                name: gridItemModel.icon,
                isCircle: true,
              ),
            ),
            Gap(8.h),
            AppText.full(
              title: tr(gridItemModel.title),
              maxLines: 2,
              style: gridItemModel.titleTextStyle ?? AppTextStyle.whiteW400F18,
            ),
            Gap(8.h),
            AppText.full(
              title: tr(gridItemModel.desc),
              maxLines: 3,
              style: gridItemModel.bodyTextStyle ?? AppTextStyle.whiteW400F12,
            ),
            Spacer(),
            Row(
              children: [
                Spacer(),
                IconWidget(
                  iconConfig: IconConfig(
                    padding: EdgeInsets.all(8),
                    name: gridItemModel.arrowIcon ??
                        AppIcons.greenArrowCircleRightIcon,
                    isCircle: true,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class GridItemModel {
  final String icon;
  final String title;
  final String desc;
  final Color bkColor;
  final String? arrowIcon;
  final VoidCallback onTap;
  final Color? iconColor;
  final AppTextStyle? bodyTextStyle;
  final AppTextStyle? titleTextStyle;

  GridItemModel({
    required this.icon,
    required this.title,
    required this.desc,
    required this.bkColor,
    required this.onTap,
    this.arrowIcon,
    this.iconColor,
    this.bodyTextStyle,
    this.titleTextStyle,
  });
}
