part of 'forget.imports.dart';

@RoutePage()
class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite2,
      appBar: DefaultAppBar.normalAppBar(title: LocaleKeys.forget_my_password),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 24.h,
          horizontal: 16.w,
        ),
        child: Column(
          children: [
            Gap(16.h),
            AppText.full(
              title: tr(LocaleKeys.write_phone_to_send_otp),
              style: AppTextStyle.primaryGreenW400F20,
              textAlign: TextAlign.center,
            ),
            Gap(16.h),
            AppTextFormField(
              labelText: LocaleKeys.phone_number,
              hintText: tr(LocaleKeys.phone_number),
            ),
            Gap(48.h),
            AppButton.basic(
              onTap: () {
                context.router.push(OtpRoute());
              },
              title: tr(LocaleKeys.send_otp),
              appButtonConfig: AppButtonConfig(
                padding: EdgeInsets.all(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
