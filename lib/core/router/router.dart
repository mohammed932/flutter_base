import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:interview_test/features/products/domain/entities/product.dart';
import 'package:interview_test/features/products/presentation/screens/bottom_tabs/bottom_tabs.imports.dart';
import 'package:interview_test/features/products/presentation/screens/gift_tabs/tabs.imports.dart';
import 'package:interview_test/features/products/presentation/screens/product_details/product_details.imports.dart';
import 'package:interview_test/features/products/presentation/screens/products/products.imports.dart';

part 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: ProductsRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: ProductDetailsRoute.page,
          path: '/product_details',
        ),
        AutoRoute(
          page: GiftTabsRoute.page,
          path: '/gift_tabs',
          children: [
            AutoRoute(
              page: ReceivedRoute.page,
              path: "received",
            ),
            AutoRoute(
              page: SentRoute.page,
              path: "sent",
            ),
          ],
        ),
        AutoRoute(
          page: ProductDetailsRoute.page,
          path: '/product_details',
        ),
        AutoRoute(
          page: BottomTabsRoute.page,
          path: '/bottom_tabs',
          children: [
            AutoRoute(
              page: ProfileRoute.page,
              path: "profile",
            ),
            AutoRoute(
              page: ContactUsRoute.page,
              path: "contact_us",
            ),
          ],
        ),
      ];
}
