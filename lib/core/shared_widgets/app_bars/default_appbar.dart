import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:interview_test/core/constants/app_icons.dart';
import 'package:interview_test/core/constants/app_text_style_enum.dart';
import 'package:interview_test/core/shared_widgets/form_builder/app_text.dart';
import 'package:interview_test/core/themes/app_colors.dart';

// ignore: must_be_immutable
class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? image;
  final bool isCenter;
  final PreferredSizeWidget? preferredSizeWidget;
  final Widget? leadingWidget;
  final List<Widget> actions;
  final bool automaticallyImplyLeading;
  final AppBarTypes appBarType;
  final double? expandedHeight;
  final Widget? flexibleSpace;
  final double? height;
  final VoidCallback? onPop;
  final Color? bkColor;
  final double? elevation;
  const DefaultAppBar._({
    this.title,
    this.image,
    required this.isCenter,
    required this.appBarType,
    required this.automaticallyImplyLeading,
    this.actions = const [],
    this.expandedHeight,
    this.flexibleSpace,
    this.leadingWidget,
    this.height,
    this.preferredSizeWidget,
    this.onPop,
    this.bkColor,
    this.elevation,
  });
  factory DefaultAppBar.normalAppBar({
    required String? title,
    List<Widget>? actions,
    bool? isCenter,
    bool? automaticallyImplyLeading,
    double? height,
    PreferredSizeWidget? preferredSizeWidget,
    VoidCallback? onPop,
    Color? bkColor,
  }) {
    return DefaultAppBar._(
        title: title ?? '',
        appBarType: AppBarTypes.normalAppBar,
        actions: actions ?? [],
        isCenter: isCenter ?? false,
        automaticallyImplyLeading: automaticallyImplyLeading ?? true,
        height: height,
        preferredSizeWidget: preferredSizeWidget,
        onPop: onPop,
        bkColor: bkColor);
  }
  factory DefaultAppBar.sliverAppBar({
    String? title,
    required Widget flexibleSpace,
    required double expandedHeight,
    required Widget leading,
    List<Widget>? actions,
    bool isCenter = false,
    VoidCallback? onPop,
    bool automaticallyImplyLeading = true,
  }) {
    return DefaultAppBar._(
      title: title ?? '',
      isCenter: isCenter,
      automaticallyImplyLeading: automaticallyImplyLeading,
      appBarType: AppBarTypes.silverAppBar,
      actions: actions ?? [],
      expandedHeight: expandedHeight,
      flexibleSpace: flexibleSpace,
      onPop: onPop,
      leadingWidget: leading,
    );
  }
  factory DefaultAppBar.image({
    required String image,
    List<Widget>? actions,
    bool? isCenter,
    bool? automaticallyImplyLeading,
    double? height,
    PreferredSizeWidget? preferredSizeWidget,
    VoidCallback? onPop,
    Color? bkColor,
    Widget? leadingWidget,
    double? elevation,
  }) {
    return DefaultAppBar._(
        image: image,
        appBarType: AppBarTypes.image,
        actions: actions ?? [],
        isCenter: isCenter ?? false,
        automaticallyImplyLeading: automaticallyImplyLeading ?? true,
        height: height,
        preferredSizeWidget: preferredSizeWidget,
        onPop: onPop,
        bkColor: bkColor,
        leadingWidget: leadingWidget,
        elevation: elevation);
  }

  @override
  Size get preferredSize => _getSize();

  Size _getSize() {
    if (preferredSizeWidget == null) {
      return Size.fromHeight(height ?? 60.h);
    } else {
      return Size.fromHeight(
          preferredSizeWidget!.preferredSize.height + (height ?? 60.h));
    }
  }

  @override
  Widget build(BuildContext context) {
    return appBarType == AppBarTypes.normalAppBar
        ? _buildNormalAppBar(context)
        : appBarType == AppBarTypes.image
            ? _buildImageAppBar(context)
            : _buildSliverAppBar(context);
  }

  AppBar _buildNormalAppBar(BuildContext context) {
    return AppBar(
      elevation: elevation ?? 0,
      title: _buildtitle(),
      centerTitle: actions.isNotEmpty,
      actions: [
        Gap(16.w),
        ...actions..map((e) => e),
      ],
      bottom: preferredSizeWidget,
      automaticallyImplyLeading: automaticallyImplyLeading,
      leading: getLeadingIcon(context),
      titleSpacing: automaticallyImplyLeading ? 32 : 16.w,
      backgroundColor: bkColor ?? AppColors.offWhite,
    );
  }

  PreferredSize _buildImageAppBar(BuildContext context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.gray.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: AppBar(
            elevation: elevation,
            title: _buildImage(),
            centerTitle: actions.isNotEmpty,
            actions: [
              ...actions..map((e) => e),
              Gap(16.w),
            ],
            bottom: preferredSizeWidget,
            automaticallyImplyLeading: automaticallyImplyLeading,
            leading: leadingWidget ?? getLeadingIcon(context),
            titleSpacing: automaticallyImplyLeading ? 32 : 16.w,
            backgroundColor: bkColor ?? AppColors.offWhite,
          ),
        ));
  }

  _buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: expandedHeight,
      title: _buildtitle(),
      leading: leadingWidget ?? getLeadingIcon(context),
      actions: [
        ...actions.map((e) => e),
      ],
      flexibleSpace: flexibleSpace,
    );
  }

  AppText _buildtitle() {
    return AppText(
      title: tr(title ?? ''),
      style: AppTextStyle.primaryGreenW400F24,
    );
  }

  Widget _buildImage() {
    return Container(
      child: Image.asset(
        image!,
        height: 47.h,
        width: 100.w,
      ),
    );
  }

  Widget? getLeadingIcon(BuildContext context) {
    if (automaticallyImplyLeading) {
      return InkWell(
        onTap: onPop ?? () => Navigator.pop(context),
        child: Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsetsDirectional.only(start: 16.w),
          child: SvgPicture.asset(
            AppIcons.backArrowIcon,
            width: 32,
            height: 32,
            color: bkColor == Colors.transparent ? Colors.white : null,
          ),
        ),
      );
    }
    return null;
  }
}

enum AppBarTypes { normalAppBar, silverAppBar, image }
