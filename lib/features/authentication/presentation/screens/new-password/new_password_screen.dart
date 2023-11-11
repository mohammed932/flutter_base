part of 'new_password.imports.dart';

@RoutePage()
class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite2,
      appBar: DefaultAppBar.normalAppBar(title: LocaleKeys.add_new_password),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 24.h,
          horizontal: 16.w,
        ),
        child: Column(
          children: [
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
            AppTextFormField(
              labelText: LocaleKeys.new_password,
              hintText: tr(LocaleKeys.new_password),
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
              title: tr(LocaleKeys.confirm),
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
