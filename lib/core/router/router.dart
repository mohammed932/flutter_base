import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

import '../../features/Authentication/presentation/screens/login/login.imports.dart';
import '../../features/authentication/presentation/screens/forget-password/forget.imports.dart';
import '../../features/authentication/presentation/screens/new-password/new_password.imports.dart';
import '../../features/authentication/presentation/screens/otp/otp.imports.dart';
import '../../features/authentication/presentation/screens/signup/signup.imports.dart';
import '../../features/calculateUnits/presentation/screens/unit_info/unit_info.imports.dart';
import '../../features/calculateUnits/presentation/screens/unit_rooms/unit_rooms.import.dart';
import '../../features/favorites/presentation/screens/favorites_screen.dart';
import '../../features/home/presentation/screens/bottom_tabs/bottom_tabs.imports.dart';
import '../../features/home/presentation/screens/home/home.imports.dart';
import '../../features/onbording/presentation/screens/onbording/onborading.imports.dart';
import '../../features/onbording/presentation/screens/splash/splash.imports.dart';
import '../../features/profile/presentiaon/screens/profile.imports.dart';
import '../../features/projects/presentation/screens/projects_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: OnBordingRoute.page,
          path: '/on_bording',
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: '/login',
        ),
        AutoRoute(
          page: SignupRoute.page,
          path: '/signup',
        ),
        AutoRoute(
          page: ForgetPasswordRoute.page,
          path: "/forget-password",
        ),
        AutoRoute(
          page: OtpRoute.page,
          path: "/otp-code",
        ),
        AutoRoute(
          page: NewPasswordRoute.page,
          path: "/new-password",
        ),
        AutoRoute(
          page: UnitInfoRoute.page,
          path: "/unit-info",
        ),
        AutoRoute(
          page: UnitRoomsRoute.page,
          path: "/unit-rooms",
        ),
        AutoRoute(
          page: BottomTabsRoute.page,
          path: '/bottom_tabs',
          children: [
            AutoRoute(
              page: HomeRoute.page,
              path: "home",
            ),
            AutoRoute(
              page: FavoritesRoute.page,
              path: "favorites",
            ),
            AutoRoute(
              page: ProjectsRoute.page,
              path: "projects",
            ),
            AutoRoute(
              page: ProfileRoute.page,
              path: "profile",
            ),
          ],
        ),
      ];
}
