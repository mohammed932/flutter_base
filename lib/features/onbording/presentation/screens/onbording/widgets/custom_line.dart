import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/themes/app_colors.dart';

class CustomLine extends StatelessWidget {
  const CustomLine({super.key});

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
            color: AppColors.offWhite2,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
