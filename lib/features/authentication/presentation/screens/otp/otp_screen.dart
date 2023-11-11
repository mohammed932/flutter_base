part of 'otp.imports.dart';

@RoutePage()
class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});
  final TextEditingController errorController = TextEditingController();
  final TextEditingController textEditingController = TextEditingController();

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
              title: tr(LocaleKeys.otp_sent),
              style: AppTextStyle.primaryGreenW400F20,
              textAlign: TextAlign.center,
            ),
            Gap(16.h),
            PinCodeTextField(
              appContext: context,
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(20),
                  fieldHeight: 66.h,
                  fieldWidth: 78.w,
                  activeFillColor: AppColors.white,
                  activeColor: AppColors.white,
                  disabledColor: AppColors.white,
                  inactiveColor: AppColors.white,
                  selectedColor: AppColors.white,
                  inactiveFillColor: AppColors.white,
                  errorBorderColor: Colors.red,
                  selectedFillColor: Colors.white,
                  borderWidth: 2,
                  inActiveBoxShadow: [
                    BoxShadow(
                      color: AppColors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 1),
                    ),
                  ],
                  activeBoxShadow: [
                    BoxShadow(
                      color: AppColors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 1),
                    ),
                  ]),
              animationDuration: Duration(milliseconds: 300),
              enableActiveFill: true,
              controller: textEditingController,
              onCompleted: (v) {
                print("Completed");
              },
              onChanged: (value) {
                print(value);
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");
                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                return true;
              },
            ),
            Gap(48.h),
            AppButton.basic(
              onTap: () => context.router.replace(NewPasswordRoute()),
              title: tr(LocaleKeys.send_otp),
              appButtonConfig: AppButtonConfig(
                padding: EdgeInsets.all(10),
              ),
            ),
            Gap(16.h),
            AppText.full(
              title: tr(LocaleKeys.send_again) + " 30 " + tr(LocaleKeys.sec),
              style: AppTextStyle.primaryGreenW400F20,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
