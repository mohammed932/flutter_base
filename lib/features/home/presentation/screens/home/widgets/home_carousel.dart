import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_test/features/home/presentation/screens/home/bloc/home_bloc.dart';

import '../../../../../../core/constants/app_images.dart';
import '../../../../../../core/constants/app_text_style_enum.dart';
import '../../../../../../core/shared_widgets/form_builder/app_text.dart';
import '../../../../../../core/themes/app_colors.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IHomeBloc, HomeState>(
      builder: (context, state) {
        log("loading ${state.toString()}");
        return Container(
            width: MediaQuery.of(context).size.width,
            height: 285.h,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CarouselSlider.builder(
                  options: CarouselOptions(
                    viewportFraction: 1,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    disableCenter: true,
                    onPageChanged: (index, reason) {},
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index, _) {
                    return CarouselItem();
                  },
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(4, (index) {
                      return const TabPageSelectorIndicator(
                        backgroundColor: AppColors.primaryGreen,
                        borderColor: AppColors.green,
                        size: 10,
                      );
                    }).toList(),
                  ),
                ),
              ],
            ));
      },
    );
  }
}

class CarouselItem extends StatelessWidget {
  const CarouselItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250.h,
            child: ClipRRect(
              child: Image.asset(AppImages.sliderI),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          PositionedDirectional(
            top: 2.h,
            child: Container(
              width: 361.w,
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    tileMode: TileMode.clamp,
                    colors: [
                      Color(0xff06604E),
                      Color(0xff08826900),
                    ],
                  )),
              child: Row(
                children: [
                  AppText(
                    title: "Comapny Name",
                    style: AppTextStyle.offwhite2W400F20,
                  ),
                  Spacer(),
                  Container(
                    width: 41.w,
                    height: 19.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                    decoration: BoxDecoration(
                      color: AppColors.green,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: AppText(
                      title: "ADS",
                      style: AppTextStyle.whiteW400F12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
