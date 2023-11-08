part of 'splash.imports.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => SplashBloc(context)..add(SplashEvent.started()),
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                  AppImages.splashVector,
                )),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 1),
                  colors: <Color>[
                    Color(0xff003D30),
                    Color(0xff003D30),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Spacer(flex: 5),
                  AppText(
                    title: "V.2",
                    style: AppTextStyle.offwhite2W400F20,
                  ),
                  Spacer(),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AppImages.logo,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
