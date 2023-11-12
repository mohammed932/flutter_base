part of 'signup.imports.dart';

@RoutePage()
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite2,
      appBar: DefaultAppBar.normalAppBar(
          title: LocaleKeys.sign_up, automaticallyImplyLeading: false),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 24.h,
          horizontal: 16.w,
        ),
        child: ListView(
          children: [
            AppTextFormField(
              labelText: LocaleKeys.user_name,
              hintText: tr(LocaleKeys.enter_phone_or_email),
            ),
            Gap(16.h),
            AppTextFormField(
              labelText: LocaleKeys.phone_number,
              hintText: tr(LocaleKeys.enter_phone_or_email),
            ),
            Gap(16.h),
            AppTextFormField(
              labelText: LocaleKeys.email,
              hintText: tr(LocaleKeys.enter_phone_or_email),
            ),
            Gap(16.h),
            AppTextFormField(
              labelText: LocaleKeys.password,
              hintText: tr(LocaleKeys.password),
              suffixIcon: IconWidget(
                iconConfig: IconConfig(
                  padding: EdgeInsets.all(5),
                  onTap: () {},
                  name: AppIcons.openEyeIcon,
                  width: 10,
                  height: 10,
                ),
              ),
            ),
            Gap(40.h),
            AppButton.basic(
              onTap: () {},
              title: tr(LocaleKeys.sign_up),
              appButtonConfig: AppButtonConfig(
                padding: EdgeInsets.all(10),
              ),
            ),
            Gap(16.h),
            ScreenSeparator(
              color: AppColors.gray,
              style: AppTextStyle.grayW400F16,
            ),
            Gap(16.h),
            AppButton.basic(
              onTap: () {
                context.router.replace(LoginRoute());
              },
              title: tr(LocaleKeys.already_have_account),
              appButtonConfig: AppButtonConfig(
                padding: EdgeInsets.all(10),
                backgroundColor: AppColors.white,
                textStyle: AppTextStyle.primaryGreenW400F20,
              ),
            ),
            Gap(16.h),
            PrivacyWarning(),
          ],
        ),
      ),
    );
  }
}
