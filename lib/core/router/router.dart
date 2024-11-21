import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/core/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AuthRoute.page, initial: true, children: [
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: SearchRoute.page),
          AutoRoute(page: InboxRoute.page),
          AutoRoute(page: ProfileNavigationRoute.page, children: [
            AutoRoute(page: ProfileRoute.page, initial: true),
            AutoRoute(page: SettingRoute.page),
            AutoRoute(page: MyFavouriteRoute.page),
            AutoRoute(page: MyOrderRoute.page),
            AutoRoute(page: LegalInformationRoute.page),
            AutoRoute(page: HolidayModeRoute.page),
          ]),
          AutoRoute(page: SettingRoute.page),
        ]),
        AutoRoute(page: ProfileDetailsRoute.page),
        AutoRoute(page: ProductDetailRoute.page)
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
