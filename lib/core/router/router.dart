import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/auth/auth_controller.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/core/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  final Ref _ref;

  AppRouter(this._ref);

  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: OnboardingRoute.page,
        ),
        AutoRoute(
            page: LoginRoute.page,
            initial: !_ref.read(authStateProvider).requireValue),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: ForgotPasswordRoute.page),
        AutoRoute(page: NewPasswordRoute.page),
        AutoRoute(
            page: AppStartupRoute.page,
            initial: _ref.read(authStateProvider).requireValue),
        AutoRoute(
            guards: [AuthGuard(_ref)],
            page: AuthRoute.page,
            path: "/",
            // initial: _ref.read(authStateProvider).requireValue,
            children: [
              AutoRoute(
                guards: [AuthGuard(_ref)],
                page: HomeRoute.page,
                // initial: true,
              ),

              AutoRoute(guards: [AuthGuard(_ref)], page: SearchRoute.page),
              AutoRoute(guards: [AuthGuard(_ref)], page: InboxRoute.page),
              AutoRoute(
                  guards: [AuthGuard(_ref)],
                  page: ProfileNavigationRoute.page,
                  path: "profile",
                  children: [
                    AutoRoute(
                      page: UserProfileDetailsRoute.page,
                      initial: true,
                      path: "user/:username",
                      guards: [AuthGuard(_ref)],
                    ),
                    AutoRoute(
                      guards: [AuthGuard(_ref)],
                      page: MenuRoute.page,
                    ),
                  ]),
              // AutoRoute(
              //     guards: [AuthGuard(_ref)],
              //     page: SellNavigationRoute.page,
              //     children: [

              //     ]),
            ]),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: ProfileDetailsRoute.page,
        ),
        AutoRoute(
          page: StyleRoute.page,
          guards: [AuthGuard(_ref)],
        ),
        AutoRoute(
            page: NotificationSettingRoute.page, guards: [AuthGuard(_ref)]),
        AutoRoute(
          page: ProductPriceFilterRoute.page,
          guards: [AuthGuard(_ref)],
        ),
        AutoRoute(
          page: ProductsByBrandRoute.page,
          guards: [AuthGuard(_ref)],
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: AboutPreluraMenuRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: SettingRoute.page,
        ),
        AutoRoute(guards: [AuthGuard(_ref)], page: ProfileSettingRoute.page),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: MyOrderRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: AccountSettingRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: LegalInformationRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: HolidayModeRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: MyFavouriteRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: SellItemRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: CategoryRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: BrandSelectionRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: SubCategoryRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: SizeSelectionRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: ColorSelectorRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: ParcelRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: ConditionRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: MaterialSelectionRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: SubCategoryProductRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: ProductListRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: PriceRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: ProductDetailRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: OfferMuiltibuyView.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: FollowersRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: FollowingRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: ChatRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: BalanceRoute.page,
        ),
        AutoRoute(
          guards: [AuthGuard(_ref)],
          page: DiscountRoute.page,
        ),
        AutoRoute(
          page: DiscountedProductsView.page,
          guards: [AuthGuard(_ref)],
        ),
        AutoRoute(
          page: FilterProductRoute.page,
          guards: [AuthGuard(_ref)],
        ),
        AutoRoute(
          page: NewSubCategoryRoute.page,
          guards: [AuthGuard(_ref)],
        ),
        AutoRoute(
          page: NewSubCategoryRoute.page,
          guards: [AuthGuard(_ref)],
        ),
        AutoRoute(
          page: UploadIdentityDocument.page,
          guards: [AuthGuard(_ref)],
        ),
        AutoRoute(
          page: CountryRegionsView.page,
          guards: [AuthGuard(_ref)],
        ),
        AutoRoute(
          page: DisplayCapturedDocument.page,
          guards: [AuthGuard(_ref)],
        ),
        AutoRoute(
          page: VerifyVideo.page,
          path: "/details",
          guards: [AuthGuard(_ref)],
        ),
        AutoRoute(
          page: SubmitVideo.page,
          guards: [AuthGuard(_ref)],
        ),
        AutoRoute(
          page: RecordVideo.page,
          guards: [AuthGuard(_ref)],
        ),
        AutoRoute(
          page: NewCategoryRoute.page,
          guards: [AuthGuard(_ref)],
        ),
        AutoRoute(
          page: VerifyYourIdentity.page,
          guards: [AuthGuard(_ref)],
        ),
        AutoRoute(
          page: CurrencySettingRoute.page,
          guards: [AuthGuard(_ref)],
        ),
        AutoRoute(page: PaymentRoute.page, guards: [AuthGuard(_ref)]),
        AutoRoute(
            page: VintageFilteredProductRoute.page, guards: [AuthGuard(_ref)]),
        AutoRoute(
            page: PartyFilteredProductRoute.page, guards: [AuthGuard(_ref)]),
        AutoRoute(
            page: ChristmasFilteredProductRoute.page,
            guards: [AuthGuard(_ref)]),
        AutoRoute(page: ProductByHashtagRoute.page),
        AutoRoute(page: ReviewRoute.page, guards: [AuthGuard(_ref)]),
        AutoRoute(page: ShopValueRoute.page, guards: [AuthGuard(_ref)]),
        AutoRoute(page: MultiBuyDiscountRoute.page, guards: [AuthGuard(_ref)]),
        AutoRoute(page: ResetPasswordRoute.page, guards: [AuthGuard(_ref)]),
        // AutoRoute(page: PauseAccount.page, guards: [AuthGuard(_ref)]),
        // AutoRoute(page: DeleteAccount.page, guards: [AuthGuard(_ref)]),
        AutoRoute(page: SecurityMenuRoute.page, guards: [AuthGuard(_ref)]),
        AutoRoute(
            page: RecentlyViewedProductRoute.page, guards: [AuthGuard(_ref)]),
        AutoRoute(page: VerifyEmailRoute.page, guards: [AuthGuard(_ref)]),
        AutoRoute(page: AppearanceMenuRoute.page, guards: [AuthGuard(_ref)]),
        AutoRoute(page: SendAnOfferRoute.page, guards: [AuthGuard(_ref)]),
        AutoRoute(page: DraftsRoute.page, guards: [AuthGuard(_ref)]),
        AutoRoute(page: PrivacySettingRoute.page, guards: [AuthGuard(_ref)]),
        AutoRoute(page: AddPaymentCard.page, guards: [AuthGuard(_ref)]),
        AutoRoute(page: AddBankAccount.page, guards: [AuthGuard(_ref)]),
        AutoRoute(page: PostageSettings.page, guards: [AuthGuard(_ref)]),
        AutoRoute(page: InviteFriend.page, guards: [AuthGuard(_ref)]),
        AutoRoute(page: ListOfContacts.page, guards: [AuthGuard(_ref)]),
      ];
}

class AuthGuard extends AutoRouteGuard {
  final Ref _ref;

  AuthGuard(this._ref);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final isAuthenticated = _ref.read(authStateProvider).requireValue;
    if (isAuthenticated) {
      if (router.current.name == LoginRoute.name) {
        router.replace(const AuthRoute());
      } else {
        resolver.next();
      }
    } else {
      router.push(LoginRoute());
    }
  }

  // @override
  // void onNavigation(NavigationResolver resolver, StackRouter router) {
  //   if (_ref.read(authStateProvider).requireValue) {
  //     resolver.next(true);
  //   } else {
  //     resolver.redirect(LoginRoute(
  //       // this callbak is only called when using deeplik
  //       onLoginResult: (success) {
  //         resolver.next(success);
  //       },
  //     ));
  //   }
  // }
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
      AccountSettingRoute.name,
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
    log('Popped ${previousRoute?.settings.name}', name: 'RouteObserver');
    final args = previousRoute?.settings.arguments;

    if (previousRoute?.settings.arguments != null) {
      final args = previousRoute?.settings.arguments;

      // If arguments are passed as a specific type, cast them

      print(
          'Navigated to ${previousRoute?.settings.name} with argument: $args');
    }

    if (previousRoute?.settings.name == ProductByHashtagRoute.name) {
      if (args is ProductByHashtagRouteArgs) {
        Future.microtask(() async {
          ref.read(selectedFilteredProductProvider.notifier).state =
              Input$ProductFiltersInput(
            hashtags: [args.hashtag],
          );
          await ref.refresh(filteredProductProvider("").future);
        });
      }
    }

    if (previousRoute?.settings.name == FilterProductRoute.name) {
      if (args is FilterProductRouteArgs) {
        // Example with a specific argument class
        log('parentCategory: ${args.parentCategory}');
        log('customBrand: ${args.customBrand}');
        Future.microtask(() async {
          ref.read(selectedFilteredProductProvider.notifier).state =
              Input$ProductFiltersInput(
            parentCategory: args.parentCategory,
          );
          await ref.refresh(filteredProductProvider("").future);
        });
      }
    }

    if (previousRoute?.settings.name == ProductsByBrandRoute.name) {
      if (args is ProductsByBrandRouteArgs) {
        Future.microtask(() async {
          ref.read(selectedFilteredProductProvider.notifier).state =
              Input$ProductFiltersInput(
                  brand: args.id, customBrand: args.customBrand);
          await ref.refresh(filteredProductProvider("").future);
        });
      }
    }

    if (previousRoute?.settings.name == ChristmasFilteredProductRoute.name) {
      if (args is ChristmasFilteredProductRouteArgs) {
        Future.microtask(() async {
          ref.read(selectedFilteredProductProvider.notifier).state =
              Input$ProductFiltersInput(style: args.style);
          await ref.refresh(filteredProductProvider("").future);
        });
      }
    }
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
        parentRoutes.any((parent) => routeName.startsWith(parent) == true);
  }
}
