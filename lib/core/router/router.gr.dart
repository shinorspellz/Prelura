// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i34;
import 'package:flutter/material.dart' as _i35;
import 'package:prelura_app/modules/views/pages/Settings/view/profile_setting_view.dart' as _i25;
import 'package:prelura_app/modules/views/pages/about_prelura_menu.dart' as _i1;
import 'package:prelura_app/modules/views/pages/auth_page.dart' as _i2;
import 'package:prelura_app/modules/views/pages/Authentication/view/sign_in.dart' as _i14;
import 'package:prelura_app/modules/views/pages/Authentication/view/sign_up.dart' as _i30;
import 'package:prelura_app/modules/views/pages/Followers/view/followers_view.dart' as _i7;
import 'package:prelura_app/modules/views/pages/Following/view/following_view.dart' as _i8;
import 'package:prelura_app/modules/views/pages/holiday_mode.dart' as _i9;
import 'package:prelura_app/modules/views/pages/home.dart' as _i11;
import 'package:prelura_app/modules/views/pages/home_navigation.dart' as _i10;
import 'package:prelura_app/modules/views/pages/inbox_screen.dart' as _i12;
import 'package:prelura_app/modules/views/pages/legal_information.dart' as _i13;
import 'package:prelura_app/modules/views/pages/My%20Order/view/my_order_screen.dart' as _i17;
import 'package:prelura_app/modules/views/pages/my_favourite.dart' as _i16;
import 'package:prelura_app/modules/views/pages/product%20detail/product_detail.dart' as _i20;
import 'package:prelura_app/modules/views/pages/Profile%20Details/view/profile_details.dart' as _i22;
import 'package:prelura_app/modules/views/pages/profile_navigation_screen.dart' as _i23;
import 'package:prelura_app/modules/views/pages/search_screen.dart' as _i26;
import 'package:prelura_app/modules/views/pages/Sell%20Item/view/brand_view.dart' as _i3;
import 'package:prelura_app/modules/views/pages/Sell%20Item/view/category_view.dart' as _i4;
import 'package:prelura_app/modules/views/pages/Sell%20Item/view/color_selector_view.dart' as _i5;
import 'package:prelura_app/modules/views/pages/Sell%20Item/view/condition_view.dart' as _i6;
import 'package:prelura_app/modules/views/pages/Sell%20Item/view/material_view.dart' as _i15;
import 'package:prelura_app/modules/views/pages/Sell%20Item/view/parcel_view.dart' as _i18;
import 'package:prelura_app/modules/views/pages/Sell%20Item/view/price_view.dart' as _i19;
import 'package:prelura_app/modules/views/pages/Sell%20Item/view/product_list_view.dart' as _i21;
import 'package:prelura_app/modules/views/pages/Sell%20Item/view/product_sub_category.dart' as _i32;
import 'package:prelura_app/modules/views/pages/Sell%20Item/view/sell_item_view.dart' as _i27;
import 'package:prelura_app/modules/views/pages/Sell%20Item/view/size_view.dart' as _i31;
import 'package:prelura_app/modules/views/pages/Sell%20Item/view/sub_category_view.dart' as _i33;
import 'package:prelura_app/modules/views/pages/sell_item_navigation.dart' as _i28;
import 'package:prelura_app/modules/views/pages/user_profile.dart' as _i24;
import 'package:prelura_app/modules/views/pages/user_settings.dart' as _i29;
import 'package:prelura_app/shared/card_model.dart' as _i36;

/// generated route for
/// [_i1.AboutPreluraMenuScreen]
class AboutPreluraMenuRoute extends _i34.PageRouteInfo<void> {
  const AboutPreluraMenuRoute({List<_i34.PageRouteInfo>? children})
      : super(
          AboutPreluraMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutPreluraMenuRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i1.AboutPreluraMenuScreen();
    },
  );
}

/// generated route for
/// [_i2.AuthPage]
class AuthRoute extends _i34.PageRouteInfo<void> {
  const AuthRoute({List<_i34.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i2.AuthPage();
    },
  );
}

/// generated route for
/// [_i3.BrandSelectionPage]
class BrandSelectionRoute extends _i34.PageRouteInfo<BrandSelectionRouteArgs> {
  BrandSelectionRoute({
    _i35.Key? key,
    List<_i34.PageRouteInfo>? children,
  }) : super(
          BrandSelectionRoute.name,
          args: BrandSelectionRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'BrandSelectionRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BrandSelectionRouteArgs>(orElse: () => const BrandSelectionRouteArgs());
      return _i3.BrandSelectionPage(key: args.key);
    },
  );
}

class BrandSelectionRouteArgs {
  const BrandSelectionRouteArgs({this.key});

  final _i35.Key? key;

  @override
  String toString() {
    return 'BrandSelectionRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.CategoryScreen]
class CategoryRoute extends _i34.PageRouteInfo<void> {
  const CategoryRoute({List<_i34.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i4.CategoryScreen();
    },
  );
}

/// generated route for
/// [_i5.ColorSelectorScreen]
class ColorSelectorRoute extends _i34.PageRouteInfo<void> {
  const ColorSelectorRoute({List<_i34.PageRouteInfo>? children})
      : super(
          ColorSelectorRoute.name,
          initialChildren: children,
        );

  static const String name = 'ColorSelectorRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i5.ColorSelectorScreen();
    },
  );
}

/// generated route for
/// [_i6.ConditionScreen]
class ConditionRoute extends _i34.PageRouteInfo<void> {
  const ConditionRoute({List<_i34.PageRouteInfo>? children})
      : super(
          ConditionRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConditionRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i6.ConditionScreen();
    },
  );
}

/// generated route for
/// [_i7.FollowersScreen]
class FollowersRoute extends _i34.PageRouteInfo<void> {
  const FollowersRoute({List<_i34.PageRouteInfo>? children})
      : super(
          FollowersRoute.name,
          initialChildren: children,
        );

  static const String name = 'FollowersRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i7.FollowersScreen();
    },
  );
}

/// generated route for
/// [_i8.FollowingScreen]
class FollowingRoute extends _i34.PageRouteInfo<void> {
  const FollowingRoute({List<_i34.PageRouteInfo>? children})
      : super(
          FollowingRoute.name,
          initialChildren: children,
        );

  static const String name = 'FollowingRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i8.FollowingScreen();
    },
  );
}

/// generated route for
/// [_i9.HolidayModeScreen]
class HolidayModeRoute extends _i34.PageRouteInfo<void> {
  const HolidayModeRoute({List<_i34.PageRouteInfo>? children})
      : super(
          HolidayModeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HolidayModeRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i9.HolidayModeScreen();
    },
  );
}

/// generated route for
/// [_i10.HomeNavigationScreen]
class HomeNavigationRoute extends _i34.PageRouteInfo<void> {
  const HomeNavigationRoute({List<_i34.PageRouteInfo>? children})
      : super(
          HomeNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavigationRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i10.HomeNavigationScreen();
    },
  );
}

/// generated route for
/// [_i11.HomeScreen]
class HomeRoute extends _i34.PageRouteInfo<void> {
  const HomeRoute({List<_i34.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i11.HomeScreen();
    },
  );
}

/// generated route for
/// [_i12.InboxScreen]
class InboxRoute extends _i34.PageRouteInfo<void> {
  const InboxRoute({List<_i34.PageRouteInfo>? children})
      : super(
          InboxRoute.name,
          initialChildren: children,
        );

  static const String name = 'InboxRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i12.InboxScreen();
    },
  );
}

/// generated route for
/// [_i13.LegalInformationScreen]
class LegalInformationRoute extends _i34.PageRouteInfo<void> {
  const LegalInformationRoute({List<_i34.PageRouteInfo>? children})
      : super(
          LegalInformationRoute.name,
          initialChildren: children,
        );

  static const String name = 'LegalInformationRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i13.LegalInformationScreen();
    },
  );
}

/// generated route for
/// [_i14.LoginScreen]
class LoginRoute extends _i34.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i35.Key? key,
    void Function(bool)? onLoginResult,
    List<_i34.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            onLoginResult: onLoginResult,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>(orElse: () => const LoginRouteArgs());
      return _i14.LoginScreen(
        key: args.key,
        onLoginResult: args.onLoginResult,
      );
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    this.onLoginResult,
  });

  final _i35.Key? key;

  final void Function(bool)? onLoginResult;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLoginResult: $onLoginResult}';
  }
}

/// generated route for
/// [_i15.MaterialSelectionScreen]
class MaterialSelectionRoute extends _i34.PageRouteInfo<void> {
  const MaterialSelectionRoute({List<_i34.PageRouteInfo>? children})
      : super(
          MaterialSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'MaterialSelectionRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i15.MaterialSelectionScreen();
    },
  );
}

/// generated route for
/// [_i16.MyFavouriteScreen]
class MyFavouriteRoute extends _i34.PageRouteInfo<void> {
  const MyFavouriteRoute({List<_i34.PageRouteInfo>? children})
      : super(
          MyFavouriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyFavouriteRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i16.MyFavouriteScreen();
    },
  );
}

/// generated route for
/// [_i17.MyOrderScreen]
class MyOrderRoute extends _i34.PageRouteInfo<void> {
  const MyOrderRoute({List<_i34.PageRouteInfo>? children})
      : super(
          MyOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyOrderRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i17.MyOrderScreen();
    },
  );
}

/// generated route for
/// [_i18.ParcelScreen]
class ParcelRoute extends _i34.PageRouteInfo<void> {
  const ParcelRoute({List<_i34.PageRouteInfo>? children})
      : super(
          ParcelRoute.name,
          initialChildren: children,
        );

  static const String name = 'ParcelRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i18.ParcelScreen();
    },
  );
}

/// generated route for
/// [_i19.PriceScreen]
class PriceRoute extends _i34.PageRouteInfo<void> {
  const PriceRoute({List<_i34.PageRouteInfo>? children})
      : super(
          PriceRoute.name,
          initialChildren: children,
        );

  static const String name = 'PriceRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i19.PriceScreen();
    },
  );
}

/// generated route for
/// [_i20.ProductDetailScreen]
class ProductDetailRoute extends _i34.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    required _i36.PreluraCardModel product,
    _i35.Key? key,
    List<_i34.PageRouteInfo>? children,
  }) : super(
          ProductDetailRoute.name,
          args: ProductDetailRouteArgs(
            product: product,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailRouteArgs>();
      return _i20.ProductDetailScreen(
        args.product,
        key: args.key,
      );
    },
  );
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({
    required this.product,
    this.key,
  });

  final _i36.PreluraCardModel product;

  final _i35.Key? key;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{product: $product, key: $key}';
  }
}

/// generated route for
/// [_i21.ProductListScreen]
class ProductListRoute extends _i34.PageRouteInfo<void> {
  const ProductListRoute({List<_i34.PageRouteInfo>? children})
      : super(
          ProductListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductListRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i21.ProductListScreen();
    },
  );
}

/// generated route for
/// [_i22.ProfileDetailsScreen]
class ProfileDetailsRoute extends _i34.PageRouteInfo<void> {
  const ProfileDetailsRoute({List<_i34.PageRouteInfo>? children})
      : super(
          ProfileDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileDetailsRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i22.ProfileDetailsScreen();
    },
  );
}

/// generated route for
/// [_i23.ProfileNavigationScreen]
class ProfileNavigationRoute extends _i34.PageRouteInfo<void> {
  const ProfileNavigationRoute({List<_i34.PageRouteInfo>? children})
      : super(
          ProfileNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileNavigationRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i23.ProfileNavigationScreen();
    },
  );
}

/// generated route for
/// [_i24.ProfileScreen]
class ProfileRoute extends _i34.PageRouteInfo<void> {
  const ProfileRoute({List<_i34.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i24.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i25.ProfileSettingScreen]
class ProfileSettingRoute extends _i34.PageRouteInfo<void> {
  const ProfileSettingRoute({List<_i34.PageRouteInfo>? children})
      : super(
          ProfileSettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileSettingRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i25.ProfileSettingScreen();
    },
  );
}

/// generated route for
/// [_i26.SearchScreen]
class SearchRoute extends _i34.PageRouteInfo<void> {
  const SearchRoute({List<_i34.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i26.SearchScreen();
    },
  );
}

/// generated route for
/// [_i27.SellItemScreen]
class SellItemRoute extends _i34.PageRouteInfo<void> {
  const SellItemRoute({List<_i34.PageRouteInfo>? children})
      : super(
          SellItemRoute.name,
          initialChildren: children,
        );

  static const String name = 'SellItemRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i27.SellItemScreen();
    },
  );
}

/// generated route for
/// [_i28.SellNavigationScreen]
class SellNavigationRoute extends _i34.PageRouteInfo<void> {
  const SellNavigationRoute({List<_i34.PageRouteInfo>? children})
      : super(
          SellNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'SellNavigationRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i28.SellNavigationScreen();
    },
  );
}

/// generated route for
/// [_i29.SettingScreen]
class SettingRoute extends _i34.PageRouteInfo<void> {
  const SettingRoute({List<_i34.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i29.SettingScreen();
    },
  );
}

/// generated route for
/// [_i30.SignUpScreen]
class SignUpRoute extends _i34.PageRouteInfo<void> {
  const SignUpRoute({List<_i34.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i30.SignUpScreen();
    },
  );
}

/// generated route for
/// [_i31.SizeSelectionPage]
class SizeSelectionRoute extends _i34.PageRouteInfo<SizeSelectionRouteArgs> {
  SizeSelectionRoute({
    _i35.Key? key,
    List<_i34.PageRouteInfo>? children,
  }) : super(
          SizeSelectionRoute.name,
          args: SizeSelectionRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SizeSelectionRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SizeSelectionRouteArgs>(orElse: () => const SizeSelectionRouteArgs());
      return _i31.SizeSelectionPage(key: args.key);
    },
  );
}

class SizeSelectionRouteArgs {
  const SizeSelectionRouteArgs({this.key});

  final _i35.Key? key;

  @override
  String toString() {
    return 'SizeSelectionRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i32.SubCategoryProductScreen]
class SubCategoryProductRoute extends _i34.PageRouteInfo<void> {
  const SubCategoryProductRoute({List<_i34.PageRouteInfo>? children})
      : super(
          SubCategoryProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubCategoryProductRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i32.SubCategoryProductScreen();
    },
  );
}

/// generated route for
/// [_i33.SubCategoryScreen]
class SubCategoryRoute extends _i34.PageRouteInfo<void> {
  const SubCategoryRoute({List<_i34.PageRouteInfo>? children})
      : super(
          SubCategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubCategoryRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i33.SubCategoryScreen();
    },
  );
}
