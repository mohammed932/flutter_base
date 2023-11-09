part of 'login.imports.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      appBar: DefaultAppBar.normalAppBar(
        title: LocaleKeys.log_in,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 24.h,
          horizontal: 16.w,
        ),
        child: Column(
          children: [
            AppTextFormField(
              labelText: LocaleKeys.email_or_phone,
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
            Gap(16.h),
            AppText(
                title: tr(LocaleKeys.forget_password),
                style: AppTextStyle.darkGreenW400F20),
            Gap(16.h),
            AppButton.basic(
              onTap: () {},
              title: tr(LocaleKeys.log_in),
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
              onTap: () {},
              title: tr(LocaleKeys.dont_have_account) +
                  " " +
                  tr(LocaleKeys.sign_up),
              appButtonConfig: AppButtonConfig(
                padding: EdgeInsets.all(10),
                backgroundColor: AppColors.white,
                textStyle: AppTextStyle.primaryGreenW400F20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
