part of 'onborading.imports.dart';

@RoutePage()
class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AppImages.onbordingImagI,
                ))),
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
                onTap: () {},
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
              Gap(16.h),
              Container(
                width: 345.w,
                alignment: Alignment.center,
                child: AppText(
                  title: tr(LocaleKeys.privacy_policy_warning),
                  style: AppTextStyle.grayW400F16,
                )..modifyStyle(modifiedStyle: TextStyle(height: 1.6)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
