// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i63;
import 'package:flutter/cupertino.dart' as _i64;
import 'package:flutter/foundation.dart' as _i69;
import 'package:flutter/material.dart' as _i65;
import 'package:prelura_app/controller/product/provider/sell_item_provider.dart'
    as _i67;
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart'
    as _i66;
import 'package:prelura_app/core/router/app_startup.dart' as _i3;
import 'package:prelura_app/model/product/categories/category_model.dart'
    as _i70;
import 'package:prelura_app/model/product/product_model.dart' as _i68;
import 'package:prelura_app/views/pages/about_prelura_menu.dart' as _i1;
import 'package:prelura_app/views/pages/auth_page.dart' as _i5;
import 'package:prelura_app/views/pages/authentication/forgot_password.dart'
    as _i19;
import 'package:prelura_app/views/pages/authentication/new_password.dart'
    as _i31;
import 'package:prelura_app/views/pages/authentication/sign_in.dart' as _i25;
import 'package:prelura_app/views/pages/authentication/sign_up.dart' as _i55;
import 'package:prelura_app/views/pages/balance_page.dart' as _i6;
import 'package:prelura_app/views/pages/chat/chat_view.dart' as _i9;
import 'package:prelura_app/views/pages/discounted_products_view.dart' as _i14;
import 'package:prelura_app/views/pages/filtered_products/product_by_filters.dart'
    as _i16;
import 'package:prelura_app/views/pages/filtered_products/product_by_hashtag_page.dart'
    as _i37;
import 'package:prelura_app/views/pages/filtered_products/product_by_sales/product_by_christmas.dart'
    as _i10;
import 'package:prelura_app/views/pages/filtered_products/product_by_sales/product_by_party.dart'
    as _i34;
import 'package:prelura_app/views/pages/filtered_products/product_by_sales/products_by_vintage.dart'
    as _i62;
import 'package:prelura_app/views/pages/filtered_products/product_filter_page.dart'
    as _i40;
import 'package:prelura_app/views/pages/filtered_products/products_by_brand.dart'
    as _i41;
import 'package:prelura_app/views/pages/followers/view/followers_view.dart'
    as _i17;
import 'package:prelura_app/views/pages/following/view/following_view.dart'
    as _i18;
import 'package:prelura_app/views/pages/holiday_mode.dart' as _i20;
import 'package:prelura_app/views/pages/home.dart' as _i22;
import 'package:prelura_app/views/pages/home_navigation.dart' as _i21;
import 'package:prelura_app/views/pages/inbox_screen.dart' as _i23;
import 'package:prelura_app/views/pages/legal_information.dart' as _i24;
import 'package:prelura_app/views/pages/menu_page.dart' as _i27;
import 'package:prelura_app/views/pages/my_favourite.dart' as _i29;
import 'package:prelura_app/views/pages/my_order/view/my_order_screen.dart'
    as _i30;
import 'package:prelura_app/views/pages/payment/payment_view.dart' as _i35;
import 'package:prelura_app/views/pages/product_detail/product_detail.dart'
    as _i38;
import 'package:prelura_app/views/pages/product_detail/send_an_offer.dart'
    as _i52;
import 'package:prelura_app/views/pages/profile_details/view/profile_details.dart'
    as _i42;
import 'package:prelura_app/views/pages/profile_details/view/review_tab.dart'
    as _i47;
import 'package:prelura_app/views/pages/profile_details_copy/view/profile_details.dart'
    as _i60;
import 'package:prelura_app/views/pages/profile_navigation_screen.dart' as _i43;
import 'package:prelura_app/views/pages/recently_viewed_product.dart' as _i45;
import 'package:prelura_app/views/pages/search_screen.dart' as _i48;
import 'package:prelura_app/views/pages/sell_item/brand_view.dart' as _i7;
import 'package:prelura_app/views/pages/sell_item/category_view.dart' as _i8;
import 'package:prelura_app/views/pages/sell_item/color_selector_view.dart'
    as _i11;
import 'package:prelura_app/views/pages/sell_item/condition_view.dart' as _i12;
import 'package:prelura_app/views/pages/sell_item/discount_page.dart' as _i13;
import 'package:prelura_app/views/pages/sell_item/drafts_page.dart' as _i15;
import 'package:prelura_app/views/pages/sell_item/material_view.dart' as _i26;
import 'package:prelura_app/views/pages/sell_item/parcel_view.dart' as _i33;
import 'package:prelura_app/views/pages/sell_item/price_view.dart' as _i36;
import 'package:prelura_app/views/pages/sell_item/product_list_view.dart'
    as _i39;
import 'package:prelura_app/views/pages/sell_item/product_sub_category.dart'
    as _i58;
import 'package:prelura_app/views/pages/sell_item/sell_item_view.dart' as _i50;
import 'package:prelura_app/views/pages/sell_item/size_view.dart' as _i56;
import 'package:prelura_app/views/pages/sell_item/style_page.dart' as _i57;
import 'package:prelura_app/views/pages/sell_item/sub_category_view.dart'
    as _i59;
import 'package:prelura_app/views/pages/sell_item_navigation.dart' as _i51;
import 'package:prelura_app/views/pages/settings/account_setting_view.dart'
    as _i2;
import 'package:prelura_app/views/pages/settings/appearance_menu.dart' as _i4;
import 'package:prelura_app/views/pages/settings/multi_buy_discount.dart'
    as _i28;
import 'package:prelura_app/views/pages/settings/notification_setting.dart'
    as _i32;
import 'package:prelura_app/views/pages/settings/profile_setting_view.dart'
    as _i44;
import 'package:prelura_app/views/pages/settings/reset_password.dart' as _i46;
import 'package:prelura_app/views/pages/settings/security_menu.dart' as _i49;
import 'package:prelura_app/views/pages/settings/shop_value.dart' as _i54;
import 'package:prelura_app/views/pages/settings/verify_email_page.dart'
    as _i61;
import 'package:prelura_app/views/pages/user_settings.dart' as _i53;

/// generated route for
/// [_i1.AboutPreluraMenuScreen]
class AboutPreluraMenuRoute extends _i63.PageRouteInfo<void> {
  const AboutPreluraMenuRoute({List<_i63.PageRouteInfo>? children})
      : super(
          AboutPreluraMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutPreluraMenuRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i1.AboutPreluraMenuScreen();
    },
  );
}

/// generated route for
/// [_i2.AccountSettingScreen]
class AccountSettingRoute extends _i63.PageRouteInfo<void> {
  const AccountSettingRoute({List<_i63.PageRouteInfo>? children})
      : super(
          AccountSettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountSettingRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i2.AccountSettingScreen();
    },
  );
}

/// generated route for
/// [_i3.AppStartupPage]
class AppStartupRoute extends _i63.PageRouteInfo<void> {
  const AppStartupRoute({List<_i63.PageRouteInfo>? children})
      : super(
          AppStartupRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppStartupRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i3.AppStartupPage();
    },
  );
}

/// generated route for
/// [_i4.AppearanceMenuScreen]
class AppearanceMenuRoute extends _i63.PageRouteInfo<void> {
  const AppearanceMenuRoute({List<_i63.PageRouteInfo>? children})
      : super(
          AppearanceMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppearanceMenuRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i4.AppearanceMenuScreen();
    },
  );
}

/// generated route for
/// [_i5.AuthPage]
class AuthRoute extends _i63.PageRouteInfo<void> {
  const AuthRoute({List<_i63.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i5.AuthPage();
    },
  );
}

/// generated route for
/// [_i6.BalancePage]
class BalanceRoute extends _i63.PageRouteInfo<void> {
  const BalanceRoute({List<_i63.PageRouteInfo>? children})
      : super(
          BalanceRoute.name,
          initialChildren: children,
        );

  static const String name = 'BalanceRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i6.BalancePage();
    },
  );
}

/// generated route for
/// [_i7.BrandSelectionPage]
class BrandSelectionRoute extends _i63.PageRouteInfo<void> {
  const BrandSelectionRoute({List<_i63.PageRouteInfo>? children})
      : super(
          BrandSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'BrandSelectionRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i7.BrandSelectionPage();
    },
  );
}

/// generated route for
/// [_i8.CategoryScreen]
class CategoryRoute extends _i63.PageRouteInfo<void> {
  const CategoryRoute({List<_i63.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i8.CategoryScreen();
    },
  );
}

/// generated route for
/// [_i9.ChatScreen]
class ChatRoute extends _i63.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    _i64.Key? key,
    required String id,
    required String username,
    required String? avatarUrl,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          ChatRoute.name,
          args: ChatRouteArgs(
            key: key,
            id: id,
            username: username,
            avatarUrl: avatarUrl,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChatRouteArgs>();
      return _i9.ChatScreen(
        key: args.key,
        id: args.id,
        username: args.username,
        avatarUrl: args.avatarUrl,
      );
    },
  );
}

class ChatRouteArgs {
  const ChatRouteArgs({
    this.key,
    required this.id,
    required this.username,
    required this.avatarUrl,
  });

  final _i64.Key? key;

  final String id;

  final String username;

  final String? avatarUrl;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, id: $id, username: $username, avatarUrl: $avatarUrl}';
  }
}

/// generated route for
/// [_i10.ChristmasFilteredProductScreen]
class ChristmasFilteredProductRoute
    extends _i63.PageRouteInfo<ChristmasFilteredProductRouteArgs> {
  ChristmasFilteredProductRoute({
    _i65.Key? key,
    required _i66.Enum$StyleEnum style,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          ChristmasFilteredProductRoute.name,
          args: ChristmasFilteredProductRouteArgs(
            key: key,
            style: style,
          ),
          initialChildren: children,
        );

  static const String name = 'ChristmasFilteredProductRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChristmasFilteredProductRouteArgs>();
      return _i10.ChristmasFilteredProductScreen(
        key: args.key,
        style: args.style,
      );
    },
  );
}

class ChristmasFilteredProductRouteArgs {
  const ChristmasFilteredProductRouteArgs({
    this.key,
    required this.style,
  });

  final _i65.Key? key;

  final _i66.Enum$StyleEnum style;

  @override
  String toString() {
    return 'ChristmasFilteredProductRouteArgs{key: $key, style: $style}';
  }
}

/// generated route for
/// [_i11.ColorSelectorScreen]
class ColorSelectorRoute extends _i63.PageRouteInfo<void> {
  const ColorSelectorRoute({List<_i63.PageRouteInfo>? children})
      : super(
          ColorSelectorRoute.name,
          initialChildren: children,
        );

  static const String name = 'ColorSelectorRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i11.ColorSelectorScreen();
    },
  );
}

/// generated route for
/// [_i12.ConditionScreen]
class ConditionRoute extends _i63.PageRouteInfo<void> {
  const ConditionRoute({List<_i63.PageRouteInfo>? children})
      : super(
          ConditionRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConditionRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i12.ConditionScreen();
    },
  );
}

/// generated route for
/// [_i13.DiscountPage]
class DiscountRoute extends _i63.PageRouteInfo<void> {
  const DiscountRoute({List<_i63.PageRouteInfo>? children})
      : super(
          DiscountRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscountRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i13.DiscountPage();
    },
  );
}

/// generated route for
/// [_i14.DiscountedProductsView]
class DiscountedProductsView
    extends _i63.PageRouteInfo<DiscountedProductsViewArgs> {
  DiscountedProductsView({
    _i65.Key? key,
    required String? title,
    required int? id,
    String? customBrand,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          DiscountedProductsView.name,
          args: DiscountedProductsViewArgs(
            key: key,
            title: title,
            id: id,
            customBrand: customBrand,
          ),
          initialChildren: children,
        );

  static const String name = 'DiscountedProductsView';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DiscountedProductsViewArgs>();
      return _i14.DiscountedProductsView(
        key: args.key,
        title: args.title,
        id: args.id,
        customBrand: args.customBrand,
      );
    },
  );
}

class DiscountedProductsViewArgs {
  const DiscountedProductsViewArgs({
    this.key,
    required this.title,
    required this.id,
    this.customBrand,
  });

  final _i65.Key? key;

  final String? title;

  final int? id;

  final String? customBrand;

  @override
  String toString() {
    return 'DiscountedProductsViewArgs{key: $key, title: $title, id: $id, customBrand: $customBrand}';
  }
}

/// generated route for
/// [_i15.DraftsPage]
class DraftsRoute extends _i63.PageRouteInfo<DraftsRouteArgs> {
  DraftsRoute({
    _i65.Key? key,
    required _i65.ValueChanged<_i67.SellItemState> selected,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          DraftsRoute.name,
          args: DraftsRouteArgs(
            key: key,
            selected: selected,
          ),
          initialChildren: children,
        );

  static const String name = 'DraftsRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DraftsRouteArgs>();
      return _i15.DraftsPage(
        key: args.key,
        selected: args.selected,
      );
    },
  );
}

class DraftsRouteArgs {
  const DraftsRouteArgs({
    this.key,
    required this.selected,
  });

  final _i65.Key? key;

  final _i65.ValueChanged<_i67.SellItemState> selected;

  @override
  String toString() {
    return 'DraftsRouteArgs{key: $key, selected: $selected}';
  }
}

/// generated route for
/// [_i16.FilterProductPage]
class FilterProductRoute extends _i63.PageRouteInfo<FilterProductRouteArgs> {
  FilterProductRoute({
    _i65.Key? key,
    required String? title,
    required int? id,
    String? customBrand,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          FilterProductRoute.name,
          args: FilterProductRouteArgs(
            key: key,
            title: title,
            id: id,
            customBrand: customBrand,
          ),
          initialChildren: children,
        );

  static const String name = 'FilterProductRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FilterProductRouteArgs>();
      return _i16.FilterProductPage(
        key: args.key,
        title: args.title,
        id: args.id,
        customBrand: args.customBrand,
      );
    },
  );
}

class FilterProductRouteArgs {
  const FilterProductRouteArgs({
    this.key,
    required this.title,
    required this.id,
    this.customBrand,
  });

  final _i65.Key? key;

  final String? title;

  final int? id;

  final String? customBrand;

  @override
  String toString() {
    return 'FilterProductRouteArgs{key: $key, title: $title, id: $id, customBrand: $customBrand}';
  }
}

/// generated route for
/// [_i17.FollowersScreen]
class FollowersRoute extends _i63.PageRouteInfo<FollowersRouteArgs> {
  FollowersRoute({
    required String username,
    _i65.Key? key,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          FollowersRoute.name,
          args: FollowersRouteArgs(
            username: username,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'FollowersRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FollowersRouteArgs>();
      return _i17.FollowersScreen(
        args.username,
        key: args.key,
      );
    },
  );
}

class FollowersRouteArgs {
  const FollowersRouteArgs({
    required this.username,
    this.key,
  });

  final String username;

  final _i65.Key? key;

  @override
  String toString() {
    return 'FollowersRouteArgs{username: $username, key: $key}';
  }
}

/// generated route for
/// [_i18.FollowingScreen]
class FollowingRoute extends _i63.PageRouteInfo<FollowingRouteArgs> {
  FollowingRoute({
    _i65.Key? key,
    required String username,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          FollowingRoute.name,
          args: FollowingRouteArgs(
            key: key,
            username: username,
          ),
          initialChildren: children,
        );

  static const String name = 'FollowingRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FollowingRouteArgs>();
      return _i18.FollowingScreen(
        key: args.key,
        username: args.username,
      );
    },
  );
}

class FollowingRouteArgs {
  const FollowingRouteArgs({
    this.key,
    required this.username,
  });

  final _i65.Key? key;

  final String username;

  @override
  String toString() {
    return 'FollowingRouteArgs{key: $key, username: $username}';
  }
}

/// generated route for
/// [_i19.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i63.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i63.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i19.ForgotPasswordScreen();
    },
  );
}

/// generated route for
/// [_i20.HolidayModeScreen]
class HolidayModeRoute extends _i63.PageRouteInfo<void> {
  const HolidayModeRoute({List<_i63.PageRouteInfo>? children})
      : super(
          HolidayModeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HolidayModeRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i20.HolidayModeScreen();
    },
  );
}

/// generated route for
/// [_i21.HomeNavigationScreen]
class HomeNavigationRoute extends _i63.PageRouteInfo<void> {
  const HomeNavigationRoute({List<_i63.PageRouteInfo>? children})
      : super(
          HomeNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavigationRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i21.HomeNavigationScreen();
    },
  );
}

/// generated route for
/// [_i22.HomeScreen]
class HomeRoute extends _i63.PageRouteInfo<void> {
  const HomeRoute({List<_i63.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i22.HomeScreen();
    },
  );
}

/// generated route for
/// [_i23.InboxScreen]
class InboxRoute extends _i63.PageRouteInfo<void> {
  const InboxRoute({List<_i63.PageRouteInfo>? children})
      : super(
          InboxRoute.name,
          initialChildren: children,
        );

  static const String name = 'InboxRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i23.InboxScreen();
    },
  );
}

/// generated route for
/// [_i24.LegalInformationScreen]
class LegalInformationRoute extends _i63.PageRouteInfo<void> {
  const LegalInformationRoute({List<_i63.PageRouteInfo>? children})
      : super(
          LegalInformationRoute.name,
          initialChildren: children,
        );

  static const String name = 'LegalInformationRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i24.LegalInformationScreen();
    },
  );
}

/// generated route for
/// [_i25.LoginScreen]
class LoginRoute extends _i63.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i65.Key? key,
    void Function(bool)? onLoginResult,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            onLoginResult: onLoginResult,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<LoginRouteArgs>(orElse: () => const LoginRouteArgs());
      return _i25.LoginScreen(
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

  final _i65.Key? key;

  final void Function(bool)? onLoginResult;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLoginResult: $onLoginResult}';
  }
}

/// generated route for
/// [_i26.MaterialSelectionScreen]
class MaterialSelectionRoute extends _i63.PageRouteInfo<void> {
  const MaterialSelectionRoute({List<_i63.PageRouteInfo>? children})
      : super(
          MaterialSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'MaterialSelectionRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i26.MaterialSelectionScreen();
    },
  );
}

/// generated route for
/// [_i27.MenuPage]
class MenuRoute extends _i63.PageRouteInfo<void> {
  const MenuRoute({List<_i63.PageRouteInfo>? children})
      : super(
          MenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'MenuRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i27.MenuPage();
    },
  );
}

/// generated route for
/// [_i28.MultiBuyDiscountScreen]
class MultiBuyDiscountRoute extends _i63.PageRouteInfo<void> {
  const MultiBuyDiscountRoute({List<_i63.PageRouteInfo>? children})
      : super(
          MultiBuyDiscountRoute.name,
          initialChildren: children,
        );

  static const String name = 'MultiBuyDiscountRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i28.MultiBuyDiscountScreen();
    },
  );
}

/// generated route for
/// [_i29.MyFavouriteScreen]
class MyFavouriteRoute extends _i63.PageRouteInfo<void> {
  const MyFavouriteRoute({List<_i63.PageRouteInfo>? children})
      : super(
          MyFavouriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyFavouriteRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i29.MyFavouriteScreen();
    },
  );
}

/// generated route for
/// [_i30.MyOrderScreen]
class MyOrderRoute extends _i63.PageRouteInfo<void> {
  const MyOrderRoute({List<_i63.PageRouteInfo>? children})
      : super(
          MyOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyOrderRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i30.MyOrderScreen();
    },
  );
}

/// generated route for
/// [_i31.NewPasswordScreen]
class NewPasswordRoute extends _i63.PageRouteInfo<NewPasswordRouteArgs> {
  NewPasswordRoute({
    _i65.Key? key,
    required String email,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          NewPasswordRoute.name,
          args: NewPasswordRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'NewPasswordRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NewPasswordRouteArgs>();
      return _i31.NewPasswordScreen(
        key: args.key,
        email: args.email,
      );
    },
  );
}

class NewPasswordRouteArgs {
  const NewPasswordRouteArgs({
    this.key,
    required this.email,
  });

  final _i65.Key? key;

  final String email;

  @override
  String toString() {
    return 'NewPasswordRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i32.NotificationSettingScreen]
class NotificationSettingRoute
    extends _i63.PageRouteInfo<NotificationSettingRouteArgs> {
  NotificationSettingRoute({
    _i65.Key? key,
    required String title,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          NotificationSettingRoute.name,
          args: NotificationSettingRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationSettingRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NotificationSettingRouteArgs>();
      return _i32.NotificationSettingScreen(
        key: args.key,
        title: args.title,
      );
    },
  );
}

class NotificationSettingRouteArgs {
  const NotificationSettingRouteArgs({
    this.key,
    required this.title,
  });

  final _i65.Key? key;

  final String title;

  @override
  String toString() {
    return 'NotificationSettingRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i33.ParcelScreen]
class ParcelRoute extends _i63.PageRouteInfo<void> {
  const ParcelRoute({List<_i63.PageRouteInfo>? children})
      : super(
          ParcelRoute.name,
          initialChildren: children,
        );

  static const String name = 'ParcelRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i33.ParcelScreen();
    },
  );
}

/// generated route for
/// [_i34.PartyFilteredProductScreen]
class PartyFilteredProductRoute extends _i63.PageRouteInfo<void> {
  const PartyFilteredProductRoute({List<_i63.PageRouteInfo>? children})
      : super(
          PartyFilteredProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'PartyFilteredProductRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i34.PartyFilteredProductScreen();
    },
  );
}

/// generated route for
/// [_i35.PaymentScreen]
class PaymentRoute extends _i63.PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    _i65.Key? key,
    required _i68.ProductModel product,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          PaymentRoute.name,
          args: PaymentRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentRouteArgs>();
      return _i35.PaymentScreen(
        key: args.key,
        product: args.product,
      );
    },
  );
}

class PaymentRouteArgs {
  const PaymentRouteArgs({
    this.key,
    required this.product,
  });

  final _i65.Key? key;

  final _i68.ProductModel product;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i36.PriceScreen]
class PriceRoute extends _i63.PageRouteInfo<void> {
  const PriceRoute({List<_i63.PageRouteInfo>? children})
      : super(
          PriceRoute.name,
          initialChildren: children,
        );

  static const String name = 'PriceRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i36.PriceScreen();
    },
  );
}

/// generated route for
/// [_i37.ProductByHashtagPage]
class ProductByHashtagRoute
    extends _i63.PageRouteInfo<ProductByHashtagRouteArgs> {
  ProductByHashtagRoute({
    _i69.Key? key,
    required String hashtag,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          ProductByHashtagRoute.name,
          args: ProductByHashtagRouteArgs(
            key: key,
            hashtag: hashtag,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductByHashtagRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductByHashtagRouteArgs>();
      return _i37.ProductByHashtagPage(
        key: args.key,
        hashtag: args.hashtag,
      );
    },
  );
}

class ProductByHashtagRouteArgs {
  const ProductByHashtagRouteArgs({
    this.key,
    required this.hashtag,
  });

  final _i69.Key? key;

  final String hashtag;

  @override
  String toString() {
    return 'ProductByHashtagRouteArgs{key: $key, hashtag: $hashtag}';
  }
}

/// generated route for
/// [_i38.ProductDetailScreen]
class ProductDetailRoute extends _i63.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    _i65.Key? key,
    required int productId,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          ProductDetailRoute.name,
          args: ProductDetailRouteArgs(
            key: key,
            productId: productId,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailRouteArgs>();
      return _i38.ProductDetailScreen(
        key: args.key,
        productId: args.productId,
      );
    },
  );
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({
    this.key,
    required this.productId,
  });

  final _i65.Key? key;

  final int productId;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i39.ProductListScreen]
class ProductListRoute extends _i63.PageRouteInfo<void> {
  const ProductListRoute({List<_i63.PageRouteInfo>? children})
      : super(
          ProductListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductListRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i39.ProductListScreen();
    },
  );
}

/// generated route for
/// [_i40.ProductPriceFilterPage]
class ProductPriceFilterRoute
    extends _i63.PageRouteInfo<ProductPriceFilterRouteArgs> {
  ProductPriceFilterRoute({
    _i65.Key? key,
    required String title,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          ProductPriceFilterRoute.name,
          args: ProductPriceFilterRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductPriceFilterRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductPriceFilterRouteArgs>();
      return _i40.ProductPriceFilterPage(
        key: args.key,
        title: args.title,
      );
    },
  );
}

class ProductPriceFilterRouteArgs {
  const ProductPriceFilterRouteArgs({
    this.key,
    required this.title,
  });

  final _i65.Key? key;

  final String title;

  @override
  String toString() {
    return 'ProductPriceFilterRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i41.ProductsByBrandPage]
class ProductsByBrandRoute
    extends _i63.PageRouteInfo<ProductsByBrandRouteArgs> {
  ProductsByBrandRoute({
    _i65.Key? key,
    required String? title,
    required int? id,
    String? customBrand,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          ProductsByBrandRoute.name,
          args: ProductsByBrandRouteArgs(
            key: key,
            title: title,
            id: id,
            customBrand: customBrand,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductsByBrandRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductsByBrandRouteArgs>();
      return _i41.ProductsByBrandPage(
        key: args.key,
        title: args.title,
        id: args.id,
        customBrand: args.customBrand,
      );
    },
  );
}

class ProductsByBrandRouteArgs {
  const ProductsByBrandRouteArgs({
    this.key,
    required this.title,
    required this.id,
    this.customBrand,
  });

  final _i65.Key? key;

  final String? title;

  final int? id;

  final String? customBrand;

  @override
  String toString() {
    return 'ProductsByBrandRouteArgs{key: $key, title: $title, id: $id, customBrand: $customBrand}';
  }
}

/// generated route for
/// [_i42.ProfileDetailsScreen]
class ProfileDetailsRoute extends _i63.PageRouteInfo<ProfileDetailsRouteArgs> {
  ProfileDetailsRoute({
    _i64.Key? key,
    required String username,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          ProfileDetailsRoute.name,
          args: ProfileDetailsRouteArgs(
            key: key,
            username: username,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileDetailsRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProfileDetailsRouteArgs>();
      return _i42.ProfileDetailsScreen(
        key: args.key,
        username: args.username,
      );
    },
  );
}

class ProfileDetailsRouteArgs {
  const ProfileDetailsRouteArgs({
    this.key,
    required this.username,
  });

  final _i64.Key? key;

  final String username;

  @override
  String toString() {
    return 'ProfileDetailsRouteArgs{key: $key, username: $username}';
  }
}

/// generated route for
/// [_i43.ProfileNavigationScreen]
class ProfileNavigationRoute extends _i63.PageRouteInfo<void> {
  const ProfileNavigationRoute({List<_i63.PageRouteInfo>? children})
      : super(
          ProfileNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileNavigationRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i43.ProfileNavigationScreen();
    },
  );
}

/// generated route for
/// [_i44.ProfileSettingScreen]
class ProfileSettingRoute extends _i63.PageRouteInfo<void> {
  const ProfileSettingRoute({List<_i63.PageRouteInfo>? children})
      : super(
          ProfileSettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileSettingRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i44.ProfileSettingScreen();
    },
  );
}

/// generated route for
/// [_i45.RecentlyViewedProductScreen]
class RecentlyViewedProductRoute
    extends _i63.PageRouteInfo<RecentlyViewedProductRouteArgs> {
  RecentlyViewedProductRoute({
    _i65.Key? key,
    required String? title,
    required int? id,
    String? customBrand,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          RecentlyViewedProductRoute.name,
          args: RecentlyViewedProductRouteArgs(
            key: key,
            title: title,
            id: id,
            customBrand: customBrand,
          ),
          initialChildren: children,
        );

  static const String name = 'RecentlyViewedProductRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RecentlyViewedProductRouteArgs>();
      return _i45.RecentlyViewedProductScreen(
        key: args.key,
        title: args.title,
        id: args.id,
        customBrand: args.customBrand,
      );
    },
  );
}

class RecentlyViewedProductRouteArgs {
  const RecentlyViewedProductRouteArgs({
    this.key,
    required this.title,
    required this.id,
    this.customBrand,
  });

  final _i65.Key? key;

  final String? title;

  final int? id;

  final String? customBrand;

  @override
  String toString() {
    return 'RecentlyViewedProductRouteArgs{key: $key, title: $title, id: $id, customBrand: $customBrand}';
  }
}

/// generated route for
/// [_i46.ResetPasswordScreen]
class ResetPasswordRoute extends _i63.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i63.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i46.ResetPasswordScreen();
    },
  );
}

/// generated route for
/// [_i47.ReviewScreen]
class ReviewRoute extends _i63.PageRouteInfo<void> {
  const ReviewRoute({List<_i63.PageRouteInfo>? children})
      : super(
          ReviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReviewRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i47.ReviewScreen();
    },
  );
}

/// generated route for
/// [_i48.SearchScreen]
class SearchRoute extends _i63.PageRouteInfo<void> {
  const SearchRoute({List<_i63.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i48.SearchScreen();
    },
  );
}

/// generated route for
/// [_i49.SecurityMenuScreen]
class SecurityMenuRoute extends _i63.PageRouteInfo<void> {
  const SecurityMenuRoute({List<_i63.PageRouteInfo>? children})
      : super(
          SecurityMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'SecurityMenuRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i49.SecurityMenuScreen();
    },
  );
}

/// generated route for
/// [_i50.SellItemScreen]
class SellItemRoute extends _i63.PageRouteInfo<SellItemRouteArgs> {
  SellItemRoute({
    _i65.Key? key,
    _i68.ProductModel? product,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          SellItemRoute.name,
          args: SellItemRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'SellItemRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SellItemRouteArgs>(
          orElse: () => const SellItemRouteArgs());
      return _i50.SellItemScreen(
        key: args.key,
        product: args.product,
      );
    },
  );
}

class SellItemRouteArgs {
  const SellItemRouteArgs({
    this.key,
    this.product,
  });

  final _i65.Key? key;

  final _i68.ProductModel? product;

  @override
  String toString() {
    return 'SellItemRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i51.SellNavigationScreen]
class SellNavigationRoute extends _i63.PageRouteInfo<void> {
  const SellNavigationRoute({List<_i63.PageRouteInfo>? children})
      : super(
          SellNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'SellNavigationRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i51.SellNavigationScreen();
    },
  );
}

/// generated route for
/// [_i52.SendAnOfferScreen]
class SendAnOfferRoute extends _i63.PageRouteInfo<SendAnOfferRouteArgs> {
  SendAnOfferRoute({
    _i65.Key? key,
    required _i68.ProductModel product,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          SendAnOfferRoute.name,
          args: SendAnOfferRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'SendAnOfferRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SendAnOfferRouteArgs>();
      return _i52.SendAnOfferScreen(
        key: args.key,
        product: args.product,
      );
    },
  );
}

class SendAnOfferRouteArgs {
  const SendAnOfferRouteArgs({
    this.key,
    required this.product,
  });

  final _i65.Key? key;

  final _i68.ProductModel product;

  @override
  String toString() {
    return 'SendAnOfferRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i53.SettingScreen]
class SettingRoute extends _i63.PageRouteInfo<void> {
  const SettingRoute({List<_i63.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i53.SettingScreen();
    },
  );
}

/// generated route for
/// [_i54.ShopValueScreen]
class ShopValueRoute extends _i63.PageRouteInfo<void> {
  const ShopValueRoute({List<_i63.PageRouteInfo>? children})
      : super(
          ShopValueRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShopValueRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i54.ShopValueScreen();
    },
  );
}

/// generated route for
/// [_i55.SignUpScreen]
class SignUpRoute extends _i63.PageRouteInfo<void> {
  const SignUpRoute({List<_i63.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i55.SignUpScreen();
    },
  );
}

/// generated route for
/// [_i56.SizeSelectionPage]
class SizeSelectionRoute extends _i63.PageRouteInfo<void> {
  const SizeSelectionRoute({List<_i63.PageRouteInfo>? children})
      : super(
          SizeSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'SizeSelectionRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i56.SizeSelectionPage();
    },
  );
}

/// generated route for
/// [_i57.StylePage]
class StyleRoute extends _i63.PageRouteInfo<void> {
  const StyleRoute({List<_i63.PageRouteInfo>? children})
      : super(
          StyleRoute.name,
          initialChildren: children,
        );

  static const String name = 'StyleRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i57.StylePage();
    },
  );
}

/// generated route for
/// [_i58.SubCategoryProductScreen]
class SubCategoryProductRoute extends _i63.PageRouteInfo<void> {
  const SubCategoryProductRoute({List<_i63.PageRouteInfo>? children})
      : super(
          SubCategoryProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubCategoryProductRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      return const _i58.SubCategoryProductScreen();
    },
  );
}

/// generated route for
/// [_i59.SubCategoryScreen]
class SubCategoryRoute extends _i63.PageRouteInfo<SubCategoryRouteArgs> {
  SubCategoryRoute({
    _i65.Key? key,
    required List<_i70.CategoryModel> subCategories,
    required String categoryName,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          SubCategoryRoute.name,
          args: SubCategoryRouteArgs(
            key: key,
            subCategories: subCategories,
            categoryName: categoryName,
          ),
          initialChildren: children,
        );

  static const String name = 'SubCategoryRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SubCategoryRouteArgs>();
      return _i59.SubCategoryScreen(
        key: args.key,
        subCategories: args.subCategories,
        categoryName: args.categoryName,
      );
    },
  );
}

class SubCategoryRouteArgs {
  const SubCategoryRouteArgs({
    this.key,
    required this.subCategories,
    required this.categoryName,
  });

  final _i65.Key? key;

  final List<_i70.CategoryModel> subCategories;

  final String categoryName;

  @override
  String toString() {
    return 'SubCategoryRouteArgs{key: $key, subCategories: $subCategories, categoryName: $categoryName}';
  }
}

/// generated route for
/// [_i60.UserProfileDetailsScreen]
class UserProfileDetailsRoute
    extends _i63.PageRouteInfo<UserProfileDetailsRouteArgs> {
  UserProfileDetailsRoute({
    _i64.Key? key,
    String? username,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          UserProfileDetailsRoute.name,
          args: UserProfileDetailsRouteArgs(
            key: key,
            username: username,
          ),
          initialChildren: children,
        );

  static const String name = 'UserProfileDetailsRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserProfileDetailsRouteArgs>(
          orElse: () => const UserProfileDetailsRouteArgs());
      return _i60.UserProfileDetailsScreen(
        key: args.key,
        username: args.username,
      );
    },
  );
}

class UserProfileDetailsRouteArgs {
  const UserProfileDetailsRouteArgs({
    this.key,
    this.username,
  });

  final _i64.Key? key;

  final String? username;

  @override
  String toString() {
    return 'UserProfileDetailsRouteArgs{key: $key, username: $username}';
  }
}

/// generated route for
/// [_i61.VerifyEmailPage]
class VerifyEmailRoute extends _i63.PageRouteInfo<VerifyEmailRouteArgs> {
  VerifyEmailRoute({
    _i69.Key? key,
    required String email,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          VerifyEmailRoute.name,
          args: VerifyEmailRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyEmailRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerifyEmailRouteArgs>();
      return _i61.VerifyEmailPage(
        key: args.key,
        email: args.email,
      );
    },
  );
}

class VerifyEmailRouteArgs {
  const VerifyEmailRouteArgs({
    this.key,
    required this.email,
  });

  final _i69.Key? key;

  final String email;

  @override
  String toString() {
    return 'VerifyEmailRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i62.VintageFilteredProductScreen]
class VintageFilteredProductRoute
    extends _i63.PageRouteInfo<VintageFilteredProductRouteArgs> {
  VintageFilteredProductRoute({
    _i65.Key? key,
    required _i66.Enum$StyleEnum style,
    List<_i63.PageRouteInfo>? children,
  }) : super(
          VintageFilteredProductRoute.name,
          args: VintageFilteredProductRouteArgs(
            key: key,
            style: style,
          ),
          initialChildren: children,
        );

  static const String name = 'VintageFilteredProductRoute';

  static _i63.PageInfo page = _i63.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VintageFilteredProductRouteArgs>();
      return _i62.VintageFilteredProductScreen(
        key: args.key,
        style: args.style,
      );
    },
  );
}

class VintageFilteredProductRouteArgs {
  const VintageFilteredProductRouteArgs({
    this.key,
    required this.style,
  });

  final _i65.Key? key;

  final _i66.Enum$StyleEnum style;

  @override
  String toString() {
    return 'VintageFilteredProductRouteArgs{key: $key, style: $style}';
  }
}
