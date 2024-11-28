// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i29;
import 'package:flutter/material.dart' as _i30;
import 'package:prelura_app/modules/auth/views/pages/auth_page.dart' as _i1;
import 'package:prelura_app/modules/auth/views/pages/Authentication/view/sign_in.dart'
    as _i12;
import 'package:prelura_app/modules/auth/views/pages/Followers/view/followers_view.dart'
    as _i6;
import 'package:prelura_app/modules/auth/views/pages/Following/view/following_view.dart'
    as _i7;
import 'package:prelura_app/modules/auth/views/pages/holiday_mode.dart' as _i8;
import 'package:prelura_app/modules/auth/views/pages/home.dart' as _i9;
import 'package:prelura_app/modules/auth/views/pages/inbox_screen.dart' as _i10;
import 'package:prelura_app/modules/auth/views/pages/legal_information.dart'
    as _i11;
import 'package:prelura_app/modules/auth/views/pages/My%20Order/view/my_order_screen.dart'
    as _i15;
import 'package:prelura_app/modules/auth/views/pages/my_favourite.dart' as _i14;
import 'package:prelura_app/modules/auth/views/pages/product%20detail/product_detail.dart'
    as _i18;
import 'package:prelura_app/modules/auth/views/pages/Profile%20Details/view/profile_details.dart'
    as _i20;
import 'package:prelura_app/modules/auth/views/pages/profile_navigation_screen.dart'
    as _i21;
import 'package:prelura_app/modules/auth/views/pages/search_screen.dart'
    as _i23;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/brand_view.dart'
    as _i2;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/category_view.dart'
    as _i3;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/color_selector_view.dart'
    as _i4;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/condition_view.dart'
    as _i5;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/material_view.dart'
    as _i13;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/parcel_view.dart'
    as _i16;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/price_view.dart'
    as _i17;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/product_list_view.dart'
    as _i19;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/product_sub_category.dart'
    as _i27;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/sell_item_view.dart'
    as _i24;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/size_view.dart'
    as _i26;
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/view/sub_category_view.dart'
    as _i28;
import 'package:prelura_app/modules/auth/views/pages/user_profile.dart' as _i22;
import 'package:prelura_app/modules/auth/views/pages/user_settings.dart'
    as _i25;

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i29.PageRouteInfo<void> {
  const AuthRoute({List<_i29.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i1.AuthPage();
    },
  );
}

/// generated route for
/// [_i2.BrandSelectionPage]
class BrandSelectionRoute extends _i29.PageRouteInfo<BrandSelectionRouteArgs> {
  BrandSelectionRoute({
    _i30.Key? key,
    List<_i29.PageRouteInfo>? children,
  }) : super(
          BrandSelectionRoute.name,
          args: BrandSelectionRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'BrandSelectionRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BrandSelectionRouteArgs>(
          orElse: () => const BrandSelectionRouteArgs());
      return _i2.BrandSelectionPage(key: args.key);
    },
  );
}

class BrandSelectionRouteArgs {
  const BrandSelectionRouteArgs({this.key});

  final _i30.Key? key;

  @override
  String toString() {
    return 'BrandSelectionRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.CategoryScreen]
class CategoryRoute extends _i29.PageRouteInfo<void> {
  const CategoryRoute({List<_i29.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i3.CategoryScreen();
    },
  );
}

/// generated route for
/// [_i4.ColorSelectorScreen]
class ColorSelectorRoute extends _i29.PageRouteInfo<void> {
  const ColorSelectorRoute({List<_i29.PageRouteInfo>? children})
      : super(
          ColorSelectorRoute.name,
          initialChildren: children,
        );

  static const String name = 'ColorSelectorRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i4.ColorSelectorScreen();
    },
  );
}

/// generated route for
/// [_i5.ConditionScreen]
class ConditionRoute extends _i29.PageRouteInfo<void> {
  const ConditionRoute({List<_i29.PageRouteInfo>? children})
      : super(
          ConditionRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConditionRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i5.ConditionScreen();
    },
  );
}

/// generated route for
/// [_i6.FollowersScreen]
class FollowersRoute extends _i29.PageRouteInfo<void> {
  const FollowersRoute({List<_i29.PageRouteInfo>? children})
      : super(
          FollowersRoute.name,
          initialChildren: children,
        );

  static const String name = 'FollowersRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return _i6.FollowersScreen();
    },
  );
}

/// generated route for
/// [_i7.FollowingScreen]
class FollowingRoute extends _i29.PageRouteInfo<void> {
  const FollowingRoute({List<_i29.PageRouteInfo>? children})
      : super(
          FollowingRoute.name,
          initialChildren: children,
        );

  static const String name = 'FollowingRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return _i7.FollowingScreen();
    },
  );
}

/// generated route for
/// [_i8.HolidayModeScreen]
class HolidayModeRoute extends _i29.PageRouteInfo<void> {
  const HolidayModeRoute({List<_i29.PageRouteInfo>? children})
      : super(
          HolidayModeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HolidayModeRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i8.HolidayModeScreen();
    },
  );
}

/// generated route for
/// [_i9.HomeScreen]
class HomeRoute extends _i29.PageRouteInfo<void> {
  const HomeRoute({List<_i29.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i9.HomeScreen();
    },
  );
}

/// generated route for
/// [_i10.InboxScreen]
class InboxRoute extends _i29.PageRouteInfo<void> {
  const InboxRoute({List<_i29.PageRouteInfo>? children})
      : super(
          InboxRoute.name,
          initialChildren: children,
        );

  static const String name = 'InboxRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i10.InboxScreen();
    },
  );
}

/// generated route for
/// [_i11.LegalInformationScreen]
class LegalInformationRoute extends _i29.PageRouteInfo<void> {
  const LegalInformationRoute({List<_i29.PageRouteInfo>? children})
      : super(
          LegalInformationRoute.name,
          initialChildren: children,
        );

  static const String name = 'LegalInformationRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i11.LegalInformationScreen();
    },
  );
}

/// generated route for
/// [_i12.LoginScreen]
class LoginRoute extends _i29.PageRouteInfo<void> {
  const LoginRoute({List<_i29.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i12.LoginScreen();
    },
  );
}

/// generated route for
/// [_i13.MaterialSelectionScreen]
class MaterialSelectionRoute extends _i29.PageRouteInfo<void> {
  const MaterialSelectionRoute({List<_i29.PageRouteInfo>? children})
      : super(
          MaterialSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'MaterialSelectionRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i13.MaterialSelectionScreen();
    },
  );
}

/// generated route for
/// [_i14.MyFavouriteScreen]
class MyFavouriteRoute extends _i29.PageRouteInfo<void> {
  const MyFavouriteRoute({List<_i29.PageRouteInfo>? children})
      : super(
          MyFavouriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyFavouriteRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i14.MyFavouriteScreen();
    },
  );
}

/// generated route for
/// [_i15.MyOrderScreen]
class MyOrderRoute extends _i29.PageRouteInfo<void> {
  const MyOrderRoute({List<_i29.PageRouteInfo>? children})
      : super(
          MyOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyOrderRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i15.MyOrderScreen();
    },
  );
}

/// generated route for
/// [_i16.ParcelScreen]
class ParcelRoute extends _i29.PageRouteInfo<void> {
  const ParcelRoute({List<_i29.PageRouteInfo>? children})
      : super(
          ParcelRoute.name,
          initialChildren: children,
        );

  static const String name = 'ParcelRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i16.ParcelScreen();
    },
  );
}

/// generated route for
/// [_i17.PriceScreen]
class PriceRoute extends _i29.PageRouteInfo<void> {
  const PriceRoute({List<_i29.PageRouteInfo>? children})
      : super(
          PriceRoute.name,
          initialChildren: children,
        );

  static const String name = 'PriceRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i17.PriceScreen();
    },
  );
}

/// generated route for
/// [_i18.ProductDetailScreen]
class ProductDetailRoute extends _i29.PageRouteInfo<void> {
  const ProductDetailRoute({List<_i29.PageRouteInfo>? children})
      : super(
          ProductDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i18.ProductDetailScreen();
    },
  );
}

/// generated route for
/// [_i19.ProductListScreen]
class ProductListRoute extends _i29.PageRouteInfo<void> {
  const ProductListRoute({List<_i29.PageRouteInfo>? children})
      : super(
          ProductListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductListRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i19.ProductListScreen();
    },
  );
}

/// generated route for
/// [_i20.ProfileDetailsScreen]
class ProfileDetailsRoute extends _i29.PageRouteInfo<void> {
  const ProfileDetailsRoute({List<_i29.PageRouteInfo>? children})
      : super(
          ProfileDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileDetailsRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i20.ProfileDetailsScreen();
    },
  );
}

/// generated route for
/// [_i21.ProfileNavigationScreen]
class ProfileNavigationRoute extends _i29.PageRouteInfo<void> {
  const ProfileNavigationRoute({List<_i29.PageRouteInfo>? children})
      : super(
          ProfileNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileNavigationRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i21.ProfileNavigationScreen();
    },
  );
}

/// generated route for
/// [_i22.ProfileScreen]
class ProfileRoute extends _i29.PageRouteInfo<void> {
  const ProfileRoute({List<_i29.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i22.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i23.SearchScreen]
class SearchRoute extends _i29.PageRouteInfo<void> {
  const SearchRoute({List<_i29.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i23.SearchScreen();
    },
  );
}

/// generated route for
/// [_i24.SellItemScreen]
class SellItemRoute extends _i29.PageRouteInfo<void> {
  const SellItemRoute({List<_i29.PageRouteInfo>? children})
      : super(
          SellItemRoute.name,
          initialChildren: children,
        );

  static const String name = 'SellItemRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i24.SellItemScreen();
    },
  );
}

/// generated route for
/// [_i25.SettingScreen]
class SettingRoute extends _i29.PageRouteInfo<void> {
  const SettingRoute({List<_i29.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i25.SettingScreen();
    },
  );
}

/// generated route for
/// [_i26.SizeSelectionPage]
class SizeSelectionRoute extends _i29.PageRouteInfo<SizeSelectionRouteArgs> {
  SizeSelectionRoute({
    _i30.Key? key,
    List<_i29.PageRouteInfo>? children,
  }) : super(
          SizeSelectionRoute.name,
          args: SizeSelectionRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SizeSelectionRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SizeSelectionRouteArgs>(
          orElse: () => const SizeSelectionRouteArgs());
      return _i26.SizeSelectionPage(key: args.key);
    },
  );
}

class SizeSelectionRouteArgs {
  const SizeSelectionRouteArgs({this.key});

  final _i30.Key? key;

  @override
  String toString() {
    return 'SizeSelectionRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i27.SubCategoryProductScreen]
class SubCategoryProductRoute extends _i29.PageRouteInfo<void> {
  const SubCategoryProductRoute({List<_i29.PageRouteInfo>? children})
      : super(
          SubCategoryProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubCategoryProductRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i27.SubCategoryProductScreen();
    },
  );
}

/// generated route for
/// [_i28.SubCategoryScreen]
class SubCategoryRoute extends _i29.PageRouteInfo<void> {
  const SubCategoryRoute({List<_i29.PageRouteInfo>? children})
      : super(
          SubCategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubCategoryRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i28.SubCategoryScreen();
    },
  );
}
