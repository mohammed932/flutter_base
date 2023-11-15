import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:interview_test/core/constants/app_text_style_enum.dart';
import 'package:interview_test/core/shared_widgets/form_builder/app_button/app_button.dart';
import 'package:interview_test/core/shared_widgets/form_builder/app_button/icon_widget.dart';
import 'package:interview_test/core/shared_widgets/form_builder/app_text.dart';
import 'package:interview_test/core/themes/app_colors.dart';

import '../../../../../../core/constants/app_icons.dart';
import '../../../../../../generated/translations.g.dart';

class UnitTypesScelection extends StatelessWidget {
  const UnitTypesScelection({super.key});

  @override
  Widget build(BuildContext context) {
    List<UnitTypesScelectionModel> _items = [
      UnitTypesScelectionModel(
          icon: AppIcons.apartmentIcon,
          title: LocaleKeys.apartment,
          isSelected: true,
          onSelect: (int index) {}),
      UnitTypesScelectionModel(
          icon: AppIcons.studioIcon,
          title: LocaleKeys.studio,
          onSelect: (int index) {}),
      UnitTypesScelectionModel(
          icon: AppIcons.villaIcon,
          title: LocaleKeys.villa,
          onSelect: (int index) {}),
      UnitTypesScelectionModel(
          icon: AppIcons.duplexIcon,
          title: LocaleKeys.duplex,
          onSelect: (int index) {}),
    ];

    double screenWidth = MediaQuery.of(context).size.width;

    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of items in each row
        crossAxisSpacing: 8.0, // Spacing between columns
        mainAxisSpacing: 8.0, // Spacing between rows
        childAspectRatio: 1.5,
      ),
      itemCount: _items.length,
      itemBuilder: (BuildContext context, int index) {
        return UnitTypeItem(unitTypesScelectionModel: _items[index]);
      },
    );
  }
}

class UnitTypeItem extends StatelessWidget {
  const UnitTypeItem({super.key, required this.unitTypesScelectionModel});
  final UnitTypesScelectionModel unitTypesScelectionModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: unitTypesScelectionModel.isSelected
            ? AppColors.primaryGreen
            : AppColors.cardsColor,
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
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          IconWidget(
            iconConfig: IconConfig(name: unitTypesScelectionModel.icon),
          ),
          Gap(2),
          Expanded(
            child: AppText.full(
                title: tr(unitTypesScelectionModel.title),
                maxLines: 1,
                style: unitTypesScelectionModel.isSelected
                    ? AppTextStyle.offwhite2W400F20
                    : AppTextStyle.grayW400F20),
          )
        ],
      ),
    );
  }
}

class UnitTypesScelectionModel {
  final String title;
  final String icon;
  final bool isSelected;
  final Function(int) onSelect;

  UnitTypesScelectionModel(
      {required this.title,
      required this.icon,
      required this.onSelect,
      this.isSelected = false});
}
