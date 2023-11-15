import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:interview_test/core/constants/app_icons.dart';
import 'package:interview_test/core/constants/app_text_style_enum.dart';
import 'package:interview_test/core/shared_widgets/form_builder/app_button/app_button.dart';
import 'package:interview_test/core/shared_widgets/form_builder/app_button/icon_widget.dart';
import 'package:interview_test/core/shared_widgets/form_builder/app_text.dart';
import 'package:interview_test/core/themes/app_colors.dart';

typedef OnSelect<T> = void Function(T selectedItem);
typedef ItemsTitles<T> = String Function(T item);

class AppDropSelection<T> extends StatefulWidget {
  const AppDropSelection({
    Key? key,
    required this.title,
    required this.hint,
    required this.items,
    required this.onSelect,
    required this.itemTitle,
  }) : super(key: key);
  final String hint;
  final String title;
  final List<T> items;
  final OnSelect<T> onSelect;
  final ItemsTitles<T> itemTitle;

  @override
  State<AppDropSelection<T>> createState() => _AppDropSelectionState<T>();
}

class _AppDropSelectionState<T> extends State<AppDropSelection<T>> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.full(
            title: tr(widget.title),
            style: AppTextStyle.primaryGreenW400F20,
          ),
          Gap(12.h),
          InkWell(
            onTap: () => toggleExpanded(),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              decoration: BoxDecoration(
                color: AppColors.white,
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
              child: Row(
                children: [
                  AppText.full(
                    title: tr(widget.hint),
                    style: AppTextStyle.primaryGreenW400F20,
                  ),
                  Spacer(),
                  IconWidget(
                    iconConfig: IconConfig(
                      onTap: () => toggleExpanded(),
                      name: isExpanded
                          ? AppIcons.arrowUpIcon
                          : AppIcons.arrowDownIcon,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: isExpanded,
            child: ListView.builder(
              padding: EdgeInsets.only(top: 16.h),
              shrinkWrap: true,
              itemCount: widget.items.length,
              itemBuilder: (context, index) {
                return _buildChildItem(index);
              },
            ),
          ),
        ],
      ),
    );
  }

  void toggleExpanded() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  Widget _buildChildItem(int index) {
    return InkWell(
      onTap: () {
        toggleExpanded();
        widget.onSelect(widget.items[index]);
      },
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              border: index + 1 == widget.items.length
                  ? null
                  : Border(
                      bottom: BorderSide(
                        color: AppColors.lighGreen,
                        width: 1,
                      ),
                    ),
            ),
            child: Text(widget.itemTitle(widget.items[index])),
          ),
        ),
      ),
    );
  }
}
