part of 'home.imports.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar.image(
        height: 60.h,
        bkColor: AppColors.white,
        leadingWidget: Row(
          children: [
            Gap(16.w),
            IconWidget(
              iconConfig: IconConfig(
                  name: AppIcons.messageCommunicationIcon,
                  width: 27.w,
                  height: 27.w,
                  onTap: () {}),
            ),
          ],
        ),
        image: AppImages.darkLogo,
        actions: [
          IconWidget(
            iconConfig: IconConfig(
                name: AppIcons.notificationIcon,
                width: 27.w,
                height: 27.w,
                onTap: () {}),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          Gap(16.h),
          HomeCarousel(),
          Gap(12.h),
          HomeGridView(),
          Gap(12.h),
          BannerContainer(
            bannerContainerModel: BannerContainerModel(
                title: LocaleKeys.supplires_title,
                body: LocaleKeys.supplires_desc,
                onTap: () {},
                icon: AppIcons.supplyIcon),
          ),
          BannerContainer(
            bannerContainerModel: BannerContainerModel(
                title: LocaleKeys.finishing_title,
                body: LocaleKeys.finishing_desc,
                onTap: () {},
                icon: AppIcons.paintRollIcon),
          ),
          Gap(12.h),
        ],
      ),
    );
  }
}
