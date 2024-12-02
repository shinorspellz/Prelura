// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i33;
import 'package:flutter/material.dart' as _i34;
import 'package:prelura_app/modules/auth/views/pages/about_prelura_menu.dart'
    as _i1;
import 'package:prelura_app/modules/auth/views/pages/auth_page.dart' as _i2;
import 'package:prelura_app/modules/auth/views/pages/Authentication/view/sign_in.dart'
    as _i14;
import 'package:prelura_app/modules/auth/views/pages/Authentication/view/sign_up.dart'
    as _i29;
import 'package:prelura_app/modules/auth/views/pages/Followers/view/followers_view.dart'
    as _i7;
import 'package:prelura_app/modules/auth/views/pages/Following/view/following_view.dart'
    as _i8;
import 'package:prelura_app/modules/auth/views/pages/holiday_mode.dart' as _i9;
import 'package:prelura_app/modules/auth/views/pages/home.dart' as _i11;
import 'package:prelura_app/modules/auth/views/pages/home_navigation.dart'
    as _i10;
import 'package:prelura_app/modules/auth/views/pages/inbox_screen.dart' as _i12;
import 'package:prelura_app/modules/auth/views/pages/legal_information.dart'
    as _i13;
import 'package:prelura_app/modules/auth/views/pages/My%20Order/view/my_order_screen.dart'
    as _i17;
import 'package:prelura_app/modules/auth/views/pages/my_favourite.dart' as _i16;
import 'package:prelura_app/modules/auth/views/pages/product%20detail/product_detail.dart'
    as _i20;
import 'package:prelura_app/modules/auth/views/pages/Profile%20Details/view/profile_details.dart'
    as _i22;
import 'package:prelura_app/modules/auth/views/pages/profile_navigation_screen.dart'
    as _i23;
import 'package:prelura_app/modules/auth/views/pages/search_screen.dart'
    as _i25;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/brand_view.dart'
    as _i3;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/category_view.dart'
    as _i4;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/color_selector_view.dart'
    as _i5;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/condition_view.dart'
    as _i6;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/material_view.dart'
    as _i15;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/parcel_view.dart'
    as _i18;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/price_view.dart'
    as _i19;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/product_list_view.dart'
    as _i21;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/product_sub_category.dart'
    as _i31;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/sell_item_view.dart'
    as _i26;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/size_view.dart'
    as _i30;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/sub_category_view.dart'
    as _i32;
import 'package:prelura_app/modules/auth/views/pages/sell_item_navigation.dart'
    as _i27;
import 'package:prelura_app/modules/auth/views/pages/user_profile.dart' as _i24;
import 'package:prelura_app/modules/auth/views/pages/user_settings.dart'
    as _i28;
import 'package:prelura_app/shared/card_model.dart' as _i35;

/// generated route for
/// [_i1.AboutPreluraMenuScreen]
class AboutPreluraMenuRoute extends _i33.PageRouteInfo<void> {
  const AboutPreluraMenuRoute({List<_i33.PageRouteInfo>? children})
      : super(
          AboutPreluraMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutPreluraMenuRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i1.AboutPreluraMenuScreen();
    },
  );
}

/// generated route for
/// [_i2.AuthPage]
class AuthRoute extends _i33.PageRouteInfo<void> {
  const AuthRoute({List<_i33.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i2.AuthPage();
    },
  );
}

/// generated route for
/// [_i3.BrandSelectionPage]
class BrandSelectionRoute extends _i33.PageRouteInfo<BrandSelectionRouteArgs> {
  BrandSelectionRoute({
    _i34.Key? key,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          BrandSelectionRoute.name,
          args: BrandSelectionRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'BrandSelectionRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BrandSelectionRouteArgs>(
          orElse: () => const BrandSelectionRouteArgs());
      return _i3.BrandSelectionPage(key: args.key);
    },
  );
}

class BrandSelectionRouteArgs {
  const BrandSelectionRouteArgs({this.key});

  final _i34.Key? key;

  @override
  String toString() {
    return 'BrandSelectionRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.CategoryScreen]
class CategoryRoute extends _i33.PageRouteInfo<void> {
  const CategoryRoute({List<_i33.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i4.CategoryScreen();
    },
  );
}

/// generated route for
/// [_i5.ColorSelectorScreen]
class ColorSelectorRoute extends _i33.PageRouteInfo<void> {
  const ColorSelectorRoute({List<_i33.PageRouteInfo>? children})
      : super(
          ColorSelectorRoute.name,
          initialChildren: children,
        );

  static const String name = 'ColorSelectorRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i5.ColorSelectorScreen();
    },
  );
}

/// generated route for
/// [_i6.ConditionScreen]
class ConditionRoute extends _i33.PageRouteInfo<void> {
  const ConditionRoute({List<_i33.PageRouteInfo>? children})
      : super(
          ConditionRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConditionRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i6.ConditionScreen();
    },
  );
}

/// generated route for
/// [_i7.FollowersScreen]
class FollowersRoute extends _i33.PageRouteInfo<void> {
  const FollowersRoute({List<_i33.PageRouteInfo>? children})
      : super(
          FollowersRoute.name,
          initialChildren: children,
        );

  static const String name = 'FollowersRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return _i7.FollowersScreen();
    },
  );
}

/// generated route for
/// [_i8.FollowingScreen]
class FollowingRoute extends _i33.PageRouteInfo<void> {
  const FollowingRoute({List<_i33.PageRouteInfo>? children})
      : super(
          FollowingRoute.name,
          initialChildren: children,
        );

  static const String name = 'FollowingRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return _i8.FollowingScreen();
    },
  );
}

/// generated route for
/// [_i9.HolidayModeScreen]
class HolidayModeRoute extends _i33.PageRouteInfo<void> {
  const HolidayModeRoute({List<_i33.PageRouteInfo>? children})
      : super(
          HolidayModeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HolidayModeRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i9.HolidayModeScreen();
    },
  );
}

/// generated route for
/// [_i10.HomeNavigationScreen]
class HomeNavigationRoute extends _i33.PageRouteInfo<void> {
  const HomeNavigationRoute({List<_i33.PageRouteInfo>? children})
      : super(
          HomeNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavigationRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i10.HomeNavigationScreen();
    },
  );
}

/// generated route for
/// [_i11.HomeScreen]
class HomeRoute extends _i33.PageRouteInfo<void> {
  const HomeRoute({List<_i33.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i11.HomeScreen();
    },
  );
}

/// generated route for
/// [_i12.InboxScreen]
class InboxRoute extends _i33.PageRouteInfo<void> {
  const InboxRoute({List<_i33.PageRouteInfo>? children})
      : super(
          InboxRoute.name,
          initialChildren: children,
        );

  static const String name = 'InboxRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i12.InboxScreen();
    },
  );
}

/// generated route for
/// [_i13.LegalInformationScreen]
class LegalInformationRoute extends _i33.PageRouteInfo<void> {
  const LegalInformationRoute({List<_i33.PageRouteInfo>? children})
      : super(
          LegalInformationRoute.name,
          initialChildren: children,
        );

  static const String name = 'LegalInformationRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i13.LegalInformationScreen();
    },
  );
}

/// generated route for
/// [_i14.LoginScreen]
class LoginRoute extends _i33.PageRouteInfo<void> {
  const LoginRoute({List<_i33.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i14.LoginScreen();
    },
  );
}

/// generated route for
/// [_i15.MaterialSelectionScreen]
class MaterialSelectionRoute extends _i33.PageRouteInfo<void> {
  const MaterialSelectionRoute({List<_i33.PageRouteInfo>? children})
      : super(
          MaterialSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'MaterialSelectionRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i15.MaterialSelectionScreen();
    },
  );
}

/// generated route for
/// [_i16.MyFavouriteScreen]
class MyFavouriteRoute extends _i33.PageRouteInfo<void> {
  const MyFavouriteRoute({List<_i33.PageRouteInfo>? children})
      : super(
          MyFavouriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyFavouriteRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i16.MyFavouriteScreen();
    },
  );
}

/// generated route for
/// [_i17.MyOrderScreen]
class MyOrderRoute extends _i33.PageRouteInfo<void> {
  const MyOrderRoute({List<_i33.PageRouteInfo>? children})
      : super(
          MyOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyOrderRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i17.MyOrderScreen();
    },
  );
}

/// generated route for
/// [_i18.ParcelScreen]
class ParcelRoute extends _i33.PageRouteInfo<void> {
  const ParcelRoute({List<_i33.PageRouteInfo>? children})
      : super(
          ParcelRoute.name,
          initialChildren: children,
        );

  static const String name = 'ParcelRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i18.ParcelScreen();
    },
  );
}

/// generated route for
/// [_i19.PriceScreen]
class PriceRoute extends _i33.PageRouteInfo<void> {
  const PriceRoute({List<_i33.PageRouteInfo>? children})
      : super(
          PriceRoute.name,
          initialChildren: children,
        );

  static const String name = 'PriceRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i19.PriceScreen();
    },
  );
}

/// generated route for
/// [_i20.ProductDetailScreen]
class ProductDetailRoute extends _i33.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    required _i35.PreluraCardModel product,
    _i34.Key? key,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          ProductDetailRoute.name,
          args: ProductDetailRouteArgs(
            product: product,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static _i33.PageInfo page = _i33.PageInfo(
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

  final _i35.PreluraCardModel product;

  final _i34.Key? key;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{product: $product, key: $key}';
  }
}

/// generated route for
/// [_i21.ProductListScreen]
class ProductListRoute extends _i33.PageRouteInfo<void> {
  const ProductListRoute({List<_i33.PageRouteInfo>? children})
      : super(
          ProductListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductListRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i21.ProductListScreen();
    },
  );
}

/// generated route for
/// [_i22.ProfileDetailsScreen]
class ProfileDetailsRoute extends _i33.PageRouteInfo<void> {
  const ProfileDetailsRoute({List<_i33.PageRouteInfo>? children})
      : super(
          ProfileDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileDetailsRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i22.ProfileDetailsScreen();
    },
  );
}

/// generated route for
/// [_i23.ProfileNavigationScreen]
class ProfileNavigationRoute extends _i33.PageRouteInfo<void> {
  const ProfileNavigationRoute({List<_i33.PageRouteInfo>? children})
      : super(
          ProfileNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileNavigationRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i23.ProfileNavigationScreen();
    },
  );
}

/// generated route for
/// [_i24.ProfileScreen]
class ProfileRoute extends _i33.PageRouteInfo<void> {
  const ProfileRoute({List<_i33.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i24.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i25.SearchScreen]
class SearchRoute extends _i33.PageRouteInfo<void> {
  const SearchRoute({List<_i33.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i25.SearchScreen();
    },
  );
}

/// generated route for
/// [_i26.SellItemScreen]
class SellItemRoute extends _i33.PageRouteInfo<void> {
  const SellItemRoute({List<_i33.PageRouteInfo>? children})
      : super(
          SellItemRoute.name,
          initialChildren: children,
        );

  static const String name = 'SellItemRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i26.SellItemScreen();
    },
  );
}

/// generated route for
/// [_i27.SellNavigationScreen]
class SellNavigationRoute extends _i33.PageRouteInfo<void> {
  const SellNavigationRoute({List<_i33.PageRouteInfo>? children})
      : super(
          SellNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'SellNavigationRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i27.SellNavigationScreen();
    },
  );
}

/// generated route for
/// [_i28.SettingScreen]
class SettingRoute extends _i33.PageRouteInfo<void> {
  const SettingRoute({List<_i33.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i28.SettingScreen();
    },
  );
}

/// generated route for
/// [_i29.SignUpScreen]
class SignUpRoute extends _i33.PageRouteInfo<void> {
  const SignUpRoute({List<_i33.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i29.SignUpScreen();
    },
  );
}

/// generated route for
/// [_i30.SizeSelectionPage]
class SizeSelectionRoute extends _i33.PageRouteInfo<SizeSelectionRouteArgs> {
  SizeSelectionRoute({
    _i34.Key? key,
    List<_i33.PageRouteInfo>? children,
  }) : super(
          SizeSelectionRoute.name,
          args: SizeSelectionRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SizeSelectionRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SizeSelectionRouteArgs>(
          orElse: () => const SizeSelectionRouteArgs());
      return _i30.SizeSelectionPage(key: args.key);
    },
  );
}

class SizeSelectionRouteArgs {
  const SizeSelectionRouteArgs({this.key});

  final _i34.Key? key;

  @override
  String toString() {
    return 'SizeSelectionRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i31.SubCategoryProductScreen]
class SubCategoryProductRoute extends _i33.PageRouteInfo<void> {
  const SubCategoryProductRoute({List<_i33.PageRouteInfo>? children})
      : super(
          SubCategoryProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubCategoryProductRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i31.SubCategoryProductScreen();
    },
  );
}

/// generated route for
/// [_i32.SubCategoryScreen]
class SubCategoryRoute extends _i33.PageRouteInfo<void> {
  const SubCategoryRoute({List<_i33.PageRouteInfo>? children})
      : super(
          SubCategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubCategoryRoute';

  static _i33.PageInfo page = _i33.PageInfo(
    name,
    builder: (data) {
      return const _i32.SubCategoryScreen();
    },
  );
}
