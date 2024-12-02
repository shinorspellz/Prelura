import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/auth/views/pages/about_prelura_menu.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: AuthRoute.page, path: "/", children: [
          AutoRoute(page: HomeNavigationRoute.page, children: [
            AutoRoute(page: HomeRoute.page, initial: true),
            AutoRoute(
              page: ProductDetailRoute.page,
            ),
          ]),
          AutoRoute(page: SearchRoute.page),
          AutoRoute(page: InboxRoute.page),
          AutoRoute(
              page: ProfileNavigationRoute.page,
              path: "profile",
              children: [
                AutoRoute(
                  page: ProfileRoute.page,
                  initial: true,
                ),
                AutoRoute(
                  page: AboutPreluraMenuRoute.page,
                ),
                AutoRoute(
                  page: SettingRoute.page,
                ),
                AutoRoute(page: ProfileSettingRoute.page),
                AutoRoute(
                  page: MyFavouriteRoute.page,
                ),
                AutoRoute(
                  page: MyOrderRoute.page,
                ),
                AutoRoute(
                  page: LegalInformationRoute.page,
                ),
                AutoRoute(
                  page: HolidayModeRoute.page,
                ),
                AutoRoute(
                  page: ProductDetailRoute.page,
                ),
                AutoRoute(
                  path: "profile-details",
                  page: ProfileDetailsRoute.page,
                ),
              ]),
          AutoRoute(page: SellNavigationRoute.page, children: [
            AutoRoute(page: SellItemRoute.page, initial: true),
            AutoRoute(
              page: CategoryRoute.page,
            ),
            AutoRoute(
              page: BrandSelectionRoute.page,
            ),
            AutoRoute(
              page: SubCategoryRoute.page,
            ),
            AutoRoute(
              page: SizeSelectionRoute.page,
            ),
            AutoRoute(
              page: ColorSelectorRoute.page,
            ),
            AutoRoute(
              page: ParcelRoute.page,
            ),
            AutoRoute(
              page: ConditionRoute.page,
            ),
            AutoRoute(
              page: MaterialSelectionRoute.page,
            ),
            AutoRoute(
              page: SubCategoryProductRoute.page,
            ),
            AutoRoute(
              page: ProductListRoute.page,
            ),
            AutoRoute(
              page: PriceRoute.page,
            ),
          ]),
          AutoRoute(
            path: "product/:id",
            page: ProductDetailRoute.page,
          ),
        ]),
        AutoRoute(
          page: FollowersRoute.page,
        ),
        AutoRoute(
          page: FollowingRoute.page,
        ),
      ];
}

/// Route Observer for ADrop [AppRouter] to log events for [didPush]
/// to better debug routing
///
final showBottomNavBarProvider = StateProvider<bool>((ref) => true);

class AppRouterObserver extends AutoRouterObserver {
  final WidgetRef ref;

  AppRouterObserver(this.ref);

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (route.settings.name == null) return;
    log('Pushed ${route.settings.name}', name: 'RouteObserver');

    final hiddenRoutes = [
      'ProfileDetailsRoute',
      'ProductDetailRoute',
      SellItemRoute.name,
      CategoryRoute.name,
      ProductListRoute.name,
      SubCategoryRoute.name,
      BrandSelectionRoute.name,
      SizeSelectionRoute.name,
      BrandSelectionRoute.name,
      PriceRoute.name,
      ConditionRoute.name,
      MaterialSelectionRoute.name,
      ParcelRoute.name,
      ColorSelectorRoute.name,
      SubCategoryProductRoute.name,
      "/profile/prodile-details"
    ];
    final parentRoutes = [
      SellNavigationRoute.name,
      ProfileNavigationRoute.name,
    ];

    Future.microtask(() {
      ref.read(showBottomNavBarProvider.notifier).state =
          !_isHidden(route, parentRoutes, hiddenRoutes);
    });
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (route.settings.name == null) return;
    log('Popped ${route.settings.name}', name: 'RouteObserver');

    final hiddenRoutes = [
      'ProfileDetailsRoute',
      'ProductDetailRoute',
      SellItemRoute.name,
      CategoryRoute.name,
      ProductListRoute.name,
      SubCategoryRoute.name,
      BrandSelectionRoute.name,
      SizeSelectionRoute.name,
      BrandSelectionRoute.name,
      PriceRoute.name,
      ConditionRoute.name,
      MaterialSelectionRoute.name,
      ParcelRoute.name,
      ColorSelectorRoute.name,
      SubCategoryProductRoute.name,
      "/profile/prodile-details"
    ];
    final parentRoutes = [
      SellNavigationRoute.name,
      ProfileNavigationRoute.name,
    ];

    Future.microtask(() {
      ref.read(showBottomNavBarProvider.notifier).state =
          previousRoute == null ||
              !_isHidden(previousRoute, parentRoutes, hiddenRoutes);
    });
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    log('Switched Tab ${route.name}', name: 'RouteObserver');
    final hiddenRoutes = [
      'ProfileDetailsRoute',
      'ProductDetailRoute',
    ];
    final parentRoutes = [
      SellNavigationRoute.name,
    ];

    Future.microtask(() {
      ref.read(showBottomNavBarProvider.notifier).state =
          !_isTabHidden(route, parentRoutes, hiddenRoutes);
    });
  }

  bool _isHidden(Route<dynamic> route, List<String> parentRoutes,
      List<String> hiddenRoutes) {
    // Check if the current route or its parent should hide the bottom nav
    final routeName = route.settings.name;
    return hiddenRoutes.contains(routeName) ||
        parentRoutes.any((parent) => routeName?.startsWith(parent) == true);
  }

  bool _isTabHidden(TabPageRoute route, List<String> parentRoutes,
      List<String> hiddenRoutes) {
    // Check if the current route or its parent should hide the bottom nav
    final routeName = route.name;
    return hiddenRoutes.contains(routeName) ||
        parentRoutes.any((parent) => routeName?.startsWith(parent) == true);
  }
}
