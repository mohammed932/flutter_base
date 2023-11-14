part of 'onborading.imports.dart';

@RoutePage()
class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.onbordingImagII))),
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            top: 64.h,
            bottom: 40.h,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  AppText(
                      title: tr(LocaleKeys.welcome_ogee),
                      style: AppTextStyle.offWhite2W400F32),
                  Spacer(),
                  IconWidget(
                    iconConfig: IconConfig(
                        name: AppIcons.languageIcon,
                        width: 30.w,
                        height: 27.h,
                        onTap: () => showChangeLanguageSheet(context)),
                  ),
                ],
              ),
              Gap(16.h),
              AppText(
                  title: tr(LocaleKeys.welcome_msg),
                  style: AppTextStyle.offwhite2W400F20),
              Spacer(),
              AppButton.basic(
                onTap: () {
                  context.router.push(SignupRoute());
                },
                title: tr(LocaleKeys.sign_up),
                appButtonConfig: AppButtonConfig(
                  padding: EdgeInsets.all(10),
                ),
              ),
              Gap(16.h),
              AppButton.basic(
                onTap: () {
                  context.router.push(LoginRoute());
                },
                title: tr(LocaleKeys.already_have_account),
                appButtonConfig: AppButtonConfig(
                  padding: EdgeInsets.all(10),
                  backgroundColor: AppColors.offWhite2,
                  textStyle: AppTextStyle.primaryGreenW400F20,
                ),
              ),
              Gap(16.h),
              ScreenSeparator(),
              AppButton.basic(
                onTap: () {
                  context.router.push(BottomTabsRoute());
                },
                title: tr(LocaleKeys.continue_guest),
                appButtonConfig: AppButtonConfig(
                  padding: EdgeInsets.all(10),
                  backgroundColor: AppColors.offWhite2,
                  textStyle: AppTextStyle.primaryGreenW400F20,
                ),
              ),
              Gap(16.h),
              PrivacyWarning(),
            ],
          ),
        ),
      ),
    );
  }
}
