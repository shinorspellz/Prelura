import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/core/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: AuthRoute.page, children: [
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: SearchRoute.page),
          AutoRoute(page: InboxRoute.page),
          AutoRoute(page: ProfileNavigationRoute.page, children: [
            AutoRoute(
              page: ProfileRoute.page,
              initial: true,
            ),
            CustomRoute(
              page: SettingRoute.page,
              transitionsBuilder: TransitionsBuilders.slideRight,
              durationInMilliseconds: 300,
            ),
            CustomRoute(
              page: MyFavouriteRoute.page,
              transitionsBuilder: TransitionsBuilders.slideRight,
              durationInMilliseconds: 300,
            ),
            CustomRoute(
              page: MyOrderRoute.page,
              transitionsBuilder: TransitionsBuilders.slideRight,
              durationInMilliseconds: 300,
            ),
            CustomRoute(
              page: LegalInformationRoute.page,
              transitionsBuilder: TransitionsBuilders.slideRight,
              durationInMilliseconds: 300,
            ),
            CustomRoute(
              page: HolidayModeRoute.page,
              transitionsBuilder: TransitionsBuilders.slideRight,
              durationInMilliseconds: 300,
            ),
          ]),
          AutoRoute(
            page: SellItemRoute.page,
          ),
        ]),
        CustomRoute(
          page: ProfileDetailsRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRight,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: ProductDetailRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRight,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: CategoryRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRight,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: BrandSelectionRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRight,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: SubCategoryRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRight,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: SizeSelectionRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRight,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: ColorSelectorRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRight,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: ParcelRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRight,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: ConditionRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRight,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: MaterialSelectionRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRight,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: SubCategoryProductRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRight,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: ProductListRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRight,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: PriceRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRight,
          durationInMilliseconds: 300,
        )
      ];
}

/// Route Observer for ADrop [AppRouter] to log events for [didPush]
/// to better debug routing
class AppRouterObserver extends AutoRouterObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (route.settings.name == null) return;
    log('Pushed ${route.settings.name}', name: 'RouteObserver');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (route.settings.name == null) return;
    log('Popped ${route.settings.name}', name: 'RouteObserver');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    log('Switched Tab ${route.name}', name: 'RouteObserver');
  }
}
