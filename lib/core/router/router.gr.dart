// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i91;
import 'package:camera/camera.dart' as _i94;
import 'package:flutter/material.dart' as _i92;
import 'package:prelura_app/controller/product/provider/sell_item_provider.dart'
    as _i95;
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart'
    as _i93;
import 'package:prelura_app/core/router/app_startup.dart' as _i5;
import 'package:prelura_app/model/chat/offer_info.dart' as _i96;
import 'package:prelura_app/model/product/categories/category_model.dart'
    as _i99;
import 'package:prelura_app/model/product/product_model.dart' as _i97;
import 'package:prelura_app/model/user/user_model.dart' as _i98;
import 'package:prelura_app/views/pages/about_prelura_menu.dart' as _i1;
import 'package:prelura_app/views/pages/auth_page.dart' as _i7;
import 'package:prelura_app/views/pages/authentication/email_sent_screen.dart'
    as _i22;
import 'package:prelura_app/views/pages/authentication/forgot_password.dart'
    as _i27;
import 'package:prelura_app/views/pages/authentication/new_password.dart'
    as _i42;
import 'package:prelura_app/views/pages/authentication/onboarding.dart' as _i46;
import 'package:prelura_app/views/pages/authentication/sign_in.dart' as _i35;
import 'package:prelura_app/views/pages/authentication/sign_up.dart' as _i78;
import 'package:prelura_app/views/pages/authentication/verify_email_page.dart'
    as _i86;
import 'package:prelura_app/views/pages/authentication/verify_user.dart'
    as _i87;
import 'package:prelura_app/views/pages/balance_page.dart' as _i8;
import 'package:prelura_app/views/pages/chat/chat_view.dart' as _i11;
import 'package:prelura_app/views/pages/chat/offer_muiltibuy_view.dart' as _i45;
import 'package:prelura_app/views/pages/discounted_products_view.dart' as _i19;
import 'package:prelura_app/views/pages/filtered_products/favourite_brands_products.dart'
    as _i23;
import 'package:prelura_app/views/pages/filtered_products/product_by_filters.dart'
    as _i24;
import 'package:prelura_app/views/pages/filtered_products/product_by_hashtag_page.dart'
    as _i56;
import 'package:prelura_app/views/pages/filtered_products/product_by_sales/product_by_christmas.dart'
    as _i12;
import 'package:prelura_app/views/pages/filtered_products/product_by_sales/product_by_party.dart'
    as _i48;
import 'package:prelura_app/views/pages/filtered_products/product_by_sales/products_by_vintage.dart'
    as _i90;
import 'package:prelura_app/views/pages/filtered_products/product_filter_page.dart'
    as _i59;
import 'package:prelura_app/views/pages/filtered_products/products_by_brand.dart'
    as _i60;
import 'package:prelura_app/views/pages/filtered_products/products_by_status.dart'
    as _i61;
import 'package:prelura_app/views/pages/followers/view/followers_view.dart'
    as _i25;
import 'package:prelura_app/views/pages/following/view/following_view.dart'
    as _i26;
import 'package:prelura_app/views/pages/holiday_mode.dart' as _i28;
import 'package:prelura_app/views/pages/home.dart' as _i30;
import 'package:prelura_app/views/pages/home_navigation.dart' as _i29;
import 'package:prelura_app/views/pages/inbox_screen.dart' as _i31;
import 'package:prelura_app/views/pages/legal_information.dart' as _i33;
import 'package:prelura_app/views/pages/menu_page.dart' as _i37;
import 'package:prelura_app/views/pages/my_favourite.dart' as _i39;
import 'package:prelura_app/views/pages/my_order/view/my_order_screen.dart'
    as _i40;
import 'package:prelura_app/views/pages/payment/payment_successful.dart'
    as _i52;
import 'package:prelura_app/views/pages/payment/payment_view.dart' as _i50;
import 'package:prelura_app/views/pages/product_detail/product_detail.dart'
    as _i57;
import 'package:prelura_app/views/pages/product_detail/send_an_offer.dart'
    as _i75;
import 'package:prelura_app/views/pages/profile_details/view/profile_details.dart'
    as _i62;
import 'package:prelura_app/views/pages/profile_details/view/review_tab.dart'
    as _i70;
import 'package:prelura_app/views/pages/profile_details_copy/view/profile_details.dart'
    as _i85;
import 'package:prelura_app/views/pages/profile_navigation_screen.dart' as _i63;
import 'package:prelura_app/views/pages/recently_viewed_product.dart' as _i65;
import 'package:prelura_app/views/pages/Report/report_a_user.dart' as _i68;
import 'package:prelura_app/views/pages/Report/report_a_user_homepage.dart'
    as _i67;
import 'package:prelura_app/views/pages/search/search_screen.dart' as _i71;
import 'package:prelura_app/views/pages/sell_item/brand_view.dart' as _i9;
import 'package:prelura_app/views/pages/sell_item/category_view.dart' as _i10;
import 'package:prelura_app/views/pages/sell_item/color_selector_view.dart'
    as _i13;
import 'package:prelura_app/views/pages/sell_item/condition_view.dart' as _i14;
import 'package:prelura_app/views/pages/sell_item/discount_page.dart' as _i18;
import 'package:prelura_app/views/pages/sell_item/drafts_page.dart' as _i21;
import 'package:prelura_app/views/pages/sell_item/material_view.dart' as _i36;
import 'package:prelura_app/views/pages/sell_item/new_category_view.dart'
    as _i41;
import 'package:prelura_app/views/pages/sell_item/new_sub_category_view.dart'
    as _i43;
import 'package:prelura_app/views/pages/sell_item/parcel_view.dart' as _i47;
import 'package:prelura_app/views/pages/sell_item/price_view.dart' as _i54;
import 'package:prelura_app/views/pages/sell_item/product_list_view.dart'
    as _i58;
import 'package:prelura_app/views/pages/sell_item/product_sub_category.dart'
    as _i81;
import 'package:prelura_app/views/pages/sell_item/sell_item_view.dart' as _i73;
import 'package:prelura_app/views/pages/sell_item/size_view.dart' as _i79;
import 'package:prelura_app/views/pages/sell_item/style_page.dart' as _i80;
import 'package:prelura_app/views/pages/sell_item/sub_category_view.dart'
    as _i82;
import 'package:prelura_app/views/pages/sell_item_navigation.dart' as _i74;
import 'package:prelura_app/views/pages/settings/account_setting_view.dart'
    as _i2;
import 'package:prelura_app/views/pages/settings/appearance_menu.dart' as _i6;
import 'package:prelura_app/views/pages/settings/bank_account/add_bank_account.dart'
    as _i3;
import 'package:prelura_app/views/pages/settings/currency_setting_view.dart'
    as _i16;
import 'package:prelura_app/views/pages/settings/delete_account.dart' as _i17;
import 'package:prelura_app/views/pages/settings/invite_friend/invite_friend.dart'
    as _i32;
import 'package:prelura_app/views/pages/settings/list_of_contacts/list_of_contacts.dart'
    as _i34;
import 'package:prelura_app/views/pages/settings/multi_buy_discount.dart'
    as _i38;
import 'package:prelura_app/views/pages/settings/notification_setting.dart'
    as _i44;
import 'package:prelura_app/views/pages/settings/pause_account.dart' as _i49;
import 'package:prelura_app/views/pages/settings/payment_settings/add_payment_card.dart'
    as _i4;
import 'package:prelura_app/views/pages/settings/payment_settings/payment_settings.dart'
    as _i51;
import 'package:prelura_app/views/pages/settings/postage_settings/postage_settings.dart'
    as _i53;
import 'package:prelura_app/views/pages/settings/privacy_setting.dart' as _i55;
import 'package:prelura_app/views/pages/settings/profile_setting_view.dart'
    as _i64;
import 'package:prelura_app/views/pages/settings/reset_password.dart' as _i69;
import 'package:prelura_app/views/pages/settings/security_menu.dart' as _i72;
import 'package:prelura_app/views/pages/settings/shop_value.dart' as _i77;
import 'package:prelura_app/views/pages/settings/verification/country_region_options.dart'
    as _i15;
import 'package:prelura_app/views/pages/settings/verification/display_captured_document.dart'
    as _i20;
import 'package:prelura_app/views/pages/settings/verification/driving_licence.dart'
    as _i84;
import 'package:prelura_app/views/pages/settings/verification/identity_verification.dart'
    as _i89;
import 'package:prelura_app/views/pages/settings/verification/record_video.dart'
    as _i66;
import 'package:prelura_app/views/pages/settings/verification/submit_video.dart'
    as _i83;
import 'package:prelura_app/views/pages/settings/verification/verify_video.dart'
    as _i88;
import 'package:prelura_app/views/pages/user_settings.dart' as _i76;

/// generated route for
/// [_i1.AboutPreluraMenuScreen]
class AboutPreluraMenuRoute extends _i91.PageRouteInfo<void> {
  const AboutPreluraMenuRoute({List<_i91.PageRouteInfo>? children})
      : super(
          AboutPreluraMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutPreluraMenuRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i1.AboutPreluraMenuScreen();
    },
  );
}

/// generated route for
/// [_i2.AccountSettingScreen]
class AccountSettingRoute extends _i91.PageRouteInfo<void> {
  const AccountSettingRoute({List<_i91.PageRouteInfo>? children})
      : super(
          AccountSettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountSettingRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i2.AccountSettingScreen();
    },
  );
}

/// generated route for
/// [_i3.AddBankAccount]
class AddBankAccount extends _i91.PageRouteInfo<void> {
  const AddBankAccount({List<_i91.PageRouteInfo>? children})
      : super(
          AddBankAccount.name,
          initialChildren: children,
        );

  static const String name = 'AddBankAccount';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i3.AddBankAccount();
    },
  );
}

/// generated route for
/// [_i4.AddPaymentCard]
class AddPaymentCard extends _i91.PageRouteInfo<void> {
  const AddPaymentCard({List<_i91.PageRouteInfo>? children})
      : super(
          AddPaymentCard.name,
          initialChildren: children,
        );

  static const String name = 'AddPaymentCard';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i4.AddPaymentCard();
    },
  );
}

/// generated route for
/// [_i5.AppStartupPage]
class AppStartupRoute extends _i91.PageRouteInfo<void> {
  const AppStartupRoute({List<_i91.PageRouteInfo>? children})
      : super(
          AppStartupRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppStartupRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i5.AppStartupPage();
    },
  );
}

/// generated route for
/// [_i6.AppearanceMenuScreen]
class AppearanceMenuRoute extends _i91.PageRouteInfo<void> {
  const AppearanceMenuRoute({List<_i91.PageRouteInfo>? children})
      : super(
          AppearanceMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppearanceMenuRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i6.AppearanceMenuScreen();
    },
  );
}

/// generated route for
/// [_i7.AuthPage]
class AuthRoute extends _i91.PageRouteInfo<void> {
  const AuthRoute({List<_i91.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i7.AuthPage();
    },
  );
}

/// generated route for
/// [_i8.BalancePage]
class BalanceRoute extends _i91.PageRouteInfo<void> {
  const BalanceRoute({List<_i91.PageRouteInfo>? children})
      : super(
          BalanceRoute.name,
          initialChildren: children,
        );

  static const String name = 'BalanceRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i8.BalancePage();
    },
  );
}

/// generated route for
/// [_i9.BrandSelectionPage]
class BrandSelectionRoute extends _i91.PageRouteInfo<void> {
  const BrandSelectionRoute({List<_i91.PageRouteInfo>? children})
      : super(
          BrandSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'BrandSelectionRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i9.BrandSelectionPage();
    },
  );
}

/// generated route for
/// [_i10.CategoryScreen]
class CategoryRoute extends _i91.PageRouteInfo<void> {
  const CategoryRoute({List<_i91.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i10.CategoryScreen();
    },
  );
}

/// generated route for
/// [_i11.ChatScreen]
class ChatRoute extends _i91.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    _i92.Key? key,
    required String id,
    required bool isOffer,
    required String username,
    required String? avatarUrl,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          ChatRoute.name,
          args: ChatRouteArgs(
            key: key,
            id: id,
            isOffer: isOffer,
            username: username,
            avatarUrl: avatarUrl,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChatRouteArgs>();
      return _i11.ChatScreen(
        key: args.key,
        id: args.id,
        isOffer: args.isOffer,
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
    required this.isOffer,
    required this.username,
    required this.avatarUrl,
  });

  final _i92.Key? key;

  final String id;

  final bool isOffer;

  final String username;

  final String? avatarUrl;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, id: $id, isOffer: $isOffer, username: $username, avatarUrl: $avatarUrl}';
  }
}

/// generated route for
/// [_i12.ChristmasFilteredProductScreen]
class ChristmasFilteredProductRoute
    extends _i91.PageRouteInfo<ChristmasFilteredProductRouteArgs> {
  ChristmasFilteredProductRoute({
    _i92.Key? key,
    required _i93.Enum$StyleEnum style,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          ChristmasFilteredProductRoute.name,
          args: ChristmasFilteredProductRouteArgs(
            key: key,
            style: style,
          ),
          initialChildren: children,
        );

  static const String name = 'ChristmasFilteredProductRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChristmasFilteredProductRouteArgs>();
      return _i12.ChristmasFilteredProductScreen(
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

  final _i92.Key? key;

  final _i93.Enum$StyleEnum style;

  @override
  String toString() {
    return 'ChristmasFilteredProductRouteArgs{key: $key, style: $style}';
  }
}

/// generated route for
/// [_i13.ColorSelectorScreen]
class ColorSelectorRoute extends _i91.PageRouteInfo<void> {
  const ColorSelectorRoute({List<_i91.PageRouteInfo>? children})
      : super(
          ColorSelectorRoute.name,
          initialChildren: children,
        );

  static const String name = 'ColorSelectorRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i13.ColorSelectorScreen();
    },
  );
}

/// generated route for
/// [_i14.ConditionScreen]
class ConditionRoute extends _i91.PageRouteInfo<void> {
  const ConditionRoute({List<_i91.PageRouteInfo>? children})
      : super(
          ConditionRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConditionRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i14.ConditionScreen();
    },
  );
}

/// generated route for
/// [_i15.CountryRegionsView]
class CountryRegionsView extends _i91.PageRouteInfo<CountryRegionsViewArgs> {
  CountryRegionsView({
    required _i92.VoidCallback? onTap,
    _i92.Key? key,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          CountryRegionsView.name,
          args: CountryRegionsViewArgs(
            onTap: onTap,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CountryRegionsView';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CountryRegionsViewArgs>();
      return _i15.CountryRegionsView(
        onTap: args.onTap,
        key: args.key,
      );
    },
  );
}

class CountryRegionsViewArgs {
  const CountryRegionsViewArgs({
    required this.onTap,
    this.key,
  });

  final _i92.VoidCallback? onTap;

  final _i92.Key? key;

  @override
  String toString() {
    return 'CountryRegionsViewArgs{onTap: $onTap, key: $key}';
  }
}

/// generated route for
/// [_i16.CurrencySettingScreen]
class CurrencySettingRoute extends _i91.PageRouteInfo<void> {
  const CurrencySettingRoute({List<_i91.PageRouteInfo>? children})
      : super(
          CurrencySettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'CurrencySettingRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i16.CurrencySettingScreen();
    },
  );
}

/// generated route for
/// [_i17.DeleteAccount]
class DeleteAccount extends _i91.PageRouteInfo<void> {
  const DeleteAccount({List<_i91.PageRouteInfo>? children})
      : super(
          DeleteAccount.name,
          initialChildren: children,
        );

  static const String name = 'DeleteAccount';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i17.DeleteAccount();
    },
  );
}

/// generated route for
/// [_i18.DiscountPage]
class DiscountRoute extends _i91.PageRouteInfo<void> {
  const DiscountRoute({List<_i91.PageRouteInfo>? children})
      : super(
          DiscountRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscountRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i18.DiscountPage();
    },
  );
}

/// generated route for
/// [_i19.DiscountedProductsView]
class DiscountedProductsView
    extends _i91.PageRouteInfo<DiscountedProductsViewArgs> {
  DiscountedProductsView({
    _i92.Key? key,
    required String? title,
    required int? id,
    String? customBrand,
    List<_i91.PageRouteInfo>? children,
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

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DiscountedProductsViewArgs>();
      return _i19.DiscountedProductsView(
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

  final _i92.Key? key;

  final String? title;

  final int? id;

  final String? customBrand;

  @override
  String toString() {
    return 'DiscountedProductsViewArgs{key: $key, title: $title, id: $id, customBrand: $customBrand}';
  }
}

/// generated route for
/// [_i20.DisplayCapturedDocument]
class DisplayCapturedDocument
    extends _i91.PageRouteInfo<DisplayCapturedDocumentArgs> {
  DisplayCapturedDocument({
    _i92.Key? key,
    required _i94.XFile image,
    required String pageTitle,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          DisplayCapturedDocument.name,
          args: DisplayCapturedDocumentArgs(
            key: key,
            image: image,
            pageTitle: pageTitle,
          ),
          initialChildren: children,
        );

  static const String name = 'DisplayCapturedDocument';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DisplayCapturedDocumentArgs>();
      return _i20.DisplayCapturedDocument(
        key: args.key,
        image: args.image,
        pageTitle: args.pageTitle,
      );
    },
  );
}

class DisplayCapturedDocumentArgs {
  const DisplayCapturedDocumentArgs({
    this.key,
    required this.image,
    required this.pageTitle,
  });

  final _i92.Key? key;

  final _i94.XFile image;

  final String pageTitle;

  @override
  String toString() {
    return 'DisplayCapturedDocumentArgs{key: $key, image: $image, pageTitle: $pageTitle}';
  }
}

/// generated route for
/// [_i21.DraftsPage]
class DraftsRoute extends _i91.PageRouteInfo<DraftsRouteArgs> {
  DraftsRoute({
    _i92.Key? key,
    required _i92.ValueChanged<_i95.SellItemState> selected,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          DraftsRoute.name,
          args: DraftsRouteArgs(
            key: key,
            selected: selected,
          ),
          initialChildren: children,
        );

  static const String name = 'DraftsRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DraftsRouteArgs>();
      return _i21.DraftsPage(
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

  final _i92.Key? key;

  final _i92.ValueChanged<_i95.SellItemState> selected;

  @override
  String toString() {
    return 'DraftsRouteArgs{key: $key, selected: $selected}';
  }
}

/// generated route for
/// [_i22.EmailSentScreen]
class EmailSentRoute extends _i91.PageRouteInfo<EmailSentRouteArgs> {
  EmailSentRoute({
    _i92.Key? key,
    required String email,
    required String username,
    required String password,
    void Function(bool)? onLoginResult,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          EmailSentRoute.name,
          args: EmailSentRouteArgs(
            key: key,
            email: email,
            username: username,
            password: password,
            onLoginResult: onLoginResult,
          ),
          initialChildren: children,
        );

  static const String name = 'EmailSentRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EmailSentRouteArgs>();
      return _i22.EmailSentScreen(
        key: args.key,
        email: args.email,
        username: args.username,
        password: args.password,
        onLoginResult: args.onLoginResult,
      );
    },
  );
}

class EmailSentRouteArgs {
  const EmailSentRouteArgs({
    this.key,
    required this.email,
    required this.username,
    required this.password,
    this.onLoginResult,
  });

  final _i92.Key? key;

  final String email;

  final String username;

  final String password;

  final void Function(bool)? onLoginResult;

  @override
  String toString() {
    return 'EmailSentRouteArgs{key: $key, email: $email, username: $username, password: $password, onLoginResult: $onLoginResult}';
  }
}

/// generated route for
/// [_i23.FavouriteBrandsProductsScreen]
class FavouriteBrandsProductsRoute
    extends _i91.PageRouteInfo<FavouriteBrandsProductsRouteArgs> {
  FavouriteBrandsProductsRoute({
    _i92.Key? key,
    required String? title,
    required int? id,
    String? customBrand,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          FavouriteBrandsProductsRoute.name,
          args: FavouriteBrandsProductsRouteArgs(
            key: key,
            title: title,
            id: id,
            customBrand: customBrand,
          ),
          initialChildren: children,
        );

  static const String name = 'FavouriteBrandsProductsRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FavouriteBrandsProductsRouteArgs>();
      return _i23.FavouriteBrandsProductsScreen(
        key: args.key,
        title: args.title,
        id: args.id,
        customBrand: args.customBrand,
      );
    },
  );
}

class FavouriteBrandsProductsRouteArgs {
  const FavouriteBrandsProductsRouteArgs({
    this.key,
    required this.title,
    required this.id,
    this.customBrand,
  });

  final _i92.Key? key;

  final String? title;

  final int? id;

  final String? customBrand;

  @override
  String toString() {
    return 'FavouriteBrandsProductsRouteArgs{key: $key, title: $title, id: $id, customBrand: $customBrand}';
  }
}

/// generated route for
/// [_i24.FilterProductPage]
class FilterProductRoute extends _i91.PageRouteInfo<FilterProductRouteArgs> {
  FilterProductRoute({
    _i92.Key? key,
    required String? title,
    required _i93.Enum$ParentCategoryEnum? parentCategory,
    String? customBrand,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          FilterProductRoute.name,
          args: FilterProductRouteArgs(
            key: key,
            title: title,
            parentCategory: parentCategory,
            customBrand: customBrand,
          ),
          initialChildren: children,
        );

  static const String name = 'FilterProductRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FilterProductRouteArgs>();
      return _i24.FilterProductPage(
        key: args.key,
        title: args.title,
        parentCategory: args.parentCategory,
        customBrand: args.customBrand,
      );
    },
  );
}

class FilterProductRouteArgs {
  const FilterProductRouteArgs({
    this.key,
    required this.title,
    required this.parentCategory,
    this.customBrand,
  });

  final _i92.Key? key;

  final String? title;

  final _i93.Enum$ParentCategoryEnum? parentCategory;

  final String? customBrand;

  @override
  String toString() {
    return 'FilterProductRouteArgs{key: $key, title: $title, parentCategory: $parentCategory, customBrand: $customBrand}';
  }
}

/// generated route for
/// [_i25.FollowersScreen]
class FollowersRoute extends _i91.PageRouteInfo<FollowersRouteArgs> {
  FollowersRoute({
    required String username,
    _i92.Key? key,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          FollowersRoute.name,
          args: FollowersRouteArgs(
            username: username,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'FollowersRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FollowersRouteArgs>();
      return _i25.FollowersScreen(
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

  final _i92.Key? key;

  @override
  String toString() {
    return 'FollowersRouteArgs{username: $username, key: $key}';
  }
}

/// generated route for
/// [_i26.FollowingScreen]
class FollowingRoute extends _i91.PageRouteInfo<FollowingRouteArgs> {
  FollowingRoute({
    _i92.Key? key,
    required String username,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          FollowingRoute.name,
          args: FollowingRouteArgs(
            key: key,
            username: username,
          ),
          initialChildren: children,
        );

  static const String name = 'FollowingRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FollowingRouteArgs>();
      return _i26.FollowingScreen(
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

  final _i92.Key? key;

  final String username;

  @override
  String toString() {
    return 'FollowingRouteArgs{key: $key, username: $username}';
  }
}

/// generated route for
/// [_i27.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i91.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i91.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i27.ForgotPasswordScreen();
    },
  );
}

/// generated route for
/// [_i28.HolidayModeScreen]
class HolidayModeRoute extends _i91.PageRouteInfo<void> {
  const HolidayModeRoute({List<_i91.PageRouteInfo>? children})
      : super(
          HolidayModeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HolidayModeRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i28.HolidayModeScreen();
    },
  );
}

/// generated route for
/// [_i29.HomeNavigationScreen]
class HomeNavigationRoute extends _i91.PageRouteInfo<void> {
  const HomeNavigationRoute({List<_i91.PageRouteInfo>? children})
      : super(
          HomeNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavigationRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i29.HomeNavigationScreen();
    },
  );
}

/// generated route for
/// [_i30.HomeScreen]
class HomeRoute extends _i91.PageRouteInfo<void> {
  const HomeRoute({List<_i91.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i30.HomeScreen();
    },
  );
}

/// generated route for
/// [_i31.InboxScreen]
class InboxRoute extends _i91.PageRouteInfo<void> {
  const InboxRoute({List<_i91.PageRouteInfo>? children})
      : super(
          InboxRoute.name,
          initialChildren: children,
        );

  static const String name = 'InboxRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i31.InboxScreen();
    },
  );
}

/// generated route for
/// [_i32.InviteFriend]
class InviteFriend extends _i91.PageRouteInfo<void> {
  const InviteFriend({List<_i91.PageRouteInfo>? children})
      : super(
          InviteFriend.name,
          initialChildren: children,
        );

  static const String name = 'InviteFriend';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i32.InviteFriend();
    },
  );
}

/// generated route for
/// [_i33.LegalInformationScreen]
class LegalInformationRoute extends _i91.PageRouteInfo<void> {
  const LegalInformationRoute({List<_i91.PageRouteInfo>? children})
      : super(
          LegalInformationRoute.name,
          initialChildren: children,
        );

  static const String name = 'LegalInformationRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i33.LegalInformationScreen();
    },
  );
}

/// generated route for
/// [_i34.ListOfContacts]
class ListOfContacts extends _i91.PageRouteInfo<void> {
  const ListOfContacts({List<_i91.PageRouteInfo>? children})
      : super(
          ListOfContacts.name,
          initialChildren: children,
        );

  static const String name = 'ListOfContacts';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i34.ListOfContacts();
    },
  );
}

/// generated route for
/// [_i35.LoginScreen]
class LoginRoute extends _i91.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i92.Key? key,
    void Function(bool)? onLoginResult,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            onLoginResult: onLoginResult,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<LoginRouteArgs>(orElse: () => const LoginRouteArgs());
      return _i35.LoginScreen(
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

  final _i92.Key? key;

  final void Function(bool)? onLoginResult;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLoginResult: $onLoginResult}';
  }
}

/// generated route for
/// [_i36.MaterialSelectionScreen]
class MaterialSelectionRoute extends _i91.PageRouteInfo<void> {
  const MaterialSelectionRoute({List<_i91.PageRouteInfo>? children})
      : super(
          MaterialSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'MaterialSelectionRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i36.MaterialSelectionScreen();
    },
  );
}

/// generated route for
/// [_i37.MenuPage]
class MenuRoute extends _i91.PageRouteInfo<void> {
  const MenuRoute({List<_i91.PageRouteInfo>? children})
      : super(
          MenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'MenuRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i37.MenuPage();
    },
  );
}

/// generated route for
/// [_i38.MultiBuyDiscountScreen]
class MultiBuyDiscountRoute extends _i91.PageRouteInfo<void> {
  const MultiBuyDiscountRoute({List<_i91.PageRouteInfo>? children})
      : super(
          MultiBuyDiscountRoute.name,
          initialChildren: children,
        );

  static const String name = 'MultiBuyDiscountRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i38.MultiBuyDiscountScreen();
    },
  );
}

/// generated route for
/// [_i39.MyFavouriteScreen]
class MyFavouriteRoute extends _i91.PageRouteInfo<void> {
  const MyFavouriteRoute({List<_i91.PageRouteInfo>? children})
      : super(
          MyFavouriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyFavouriteRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i39.MyFavouriteScreen();
    },
  );
}

/// generated route for
/// [_i40.MyOrderScreen]
class MyOrderRoute extends _i91.PageRouteInfo<void> {
  const MyOrderRoute({List<_i91.PageRouteInfo>? children})
      : super(
          MyOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyOrderRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i40.MyOrderScreen();
    },
  );
}

/// generated route for
/// [_i41.NewCategoryScreen]
class NewCategoryRoute extends _i91.PageRouteInfo<void> {
  const NewCategoryRoute({List<_i91.PageRouteInfo>? children})
      : super(
          NewCategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewCategoryRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i41.NewCategoryScreen();
    },
  );
}

/// generated route for
/// [_i42.NewPasswordScreen]
class NewPasswordRoute extends _i91.PageRouteInfo<NewPasswordRouteArgs> {
  NewPasswordRoute({
    _i92.Key? key,
    required String email,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          NewPasswordRoute.name,
          args: NewPasswordRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'NewPasswordRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NewPasswordRouteArgs>();
      return _i42.NewPasswordScreen(
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

  final _i92.Key? key;

  final String email;

  @override
  String toString() {
    return 'NewPasswordRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i43.NewSubCategoryScreen]
class NewSubCategoryRoute extends _i91.PageRouteInfo<NewSubCategoryRouteArgs> {
  NewSubCategoryRoute({
    _i92.Key? key,
    required String parentId,
    required String parentName,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          NewSubCategoryRoute.name,
          args: NewSubCategoryRouteArgs(
            key: key,
            parentId: parentId,
            parentName: parentName,
          ),
          initialChildren: children,
        );

  static const String name = 'NewSubCategoryRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NewSubCategoryRouteArgs>();
      return _i43.NewSubCategoryScreen(
        key: args.key,
        parentId: args.parentId,
        parentName: args.parentName,
      );
    },
  );
}

class NewSubCategoryRouteArgs {
  const NewSubCategoryRouteArgs({
    this.key,
    required this.parentId,
    required this.parentName,
  });

  final _i92.Key? key;

  final String parentId;

  final String parentName;

  @override
  String toString() {
    return 'NewSubCategoryRouteArgs{key: $key, parentId: $parentId, parentName: $parentName}';
  }
}

/// generated route for
/// [_i44.NotificationSettingScreen]
class NotificationSettingRoute
    extends _i91.PageRouteInfo<NotificationSettingRouteArgs> {
  NotificationSettingRoute({
    _i92.Key? key,
    required String title,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          NotificationSettingRoute.name,
          args: NotificationSettingRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationSettingRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NotificationSettingRouteArgs>();
      return _i44.NotificationSettingScreen(
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

  final _i92.Key? key;

  final String title;

  @override
  String toString() {
    return 'NotificationSettingRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i45.OfferMuiltibuyView]
class OfferMuiltibuyView extends _i91.PageRouteInfo<OfferMuiltibuyViewArgs> {
  OfferMuiltibuyView({
    _i92.Key? key,
    required List<_i96.Product> products,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          OfferMuiltibuyView.name,
          args: OfferMuiltibuyViewArgs(
            key: key,
            products: products,
          ),
          initialChildren: children,
        );

  static const String name = 'OfferMuiltibuyView';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OfferMuiltibuyViewArgs>();
      return _i45.OfferMuiltibuyView(
        key: args.key,
        products: args.products,
      );
    },
  );
}

class OfferMuiltibuyViewArgs {
  const OfferMuiltibuyViewArgs({
    this.key,
    required this.products,
  });

  final _i92.Key? key;

  final List<_i96.Product> products;

  @override
  String toString() {
    return 'OfferMuiltibuyViewArgs{key: $key, products: $products}';
  }
}

/// generated route for
/// [_i46.OnboardingScreen]
class OnboardingRoute extends _i91.PageRouteInfo<void> {
  const OnboardingRoute({List<_i91.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i46.OnboardingScreen();
    },
  );
}

/// generated route for
/// [_i47.ParcelScreen]
class ParcelRoute extends _i91.PageRouteInfo<void> {
  const ParcelRoute({List<_i91.PageRouteInfo>? children})
      : super(
          ParcelRoute.name,
          initialChildren: children,
        );

  static const String name = 'ParcelRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i47.ParcelScreen();
    },
  );
}

/// generated route for
/// [_i48.PartyFilteredProductScreen]
class PartyFilteredProductRoute extends _i91.PageRouteInfo<void> {
  const PartyFilteredProductRoute({List<_i91.PageRouteInfo>? children})
      : super(
          PartyFilteredProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'PartyFilteredProductRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i48.PartyFilteredProductScreen();
    },
  );
}

/// generated route for
/// [_i49.PauseAccount]
class PauseAccount extends _i91.PageRouteInfo<void> {
  const PauseAccount({List<_i91.PageRouteInfo>? children})
      : super(
          PauseAccount.name,
          initialChildren: children,
        );

  static const String name = 'PauseAccount';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i49.PauseAccount();
    },
  );
}

/// generated route for
/// [_i50.PaymentScreen]
class PaymentRoute extends _i91.PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    _i92.Key? key,
    required List<_i97.ProductModel> products,
    double? totalPrice,
    _i98.UserModel? user,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          PaymentRoute.name,
          args: PaymentRouteArgs(
            key: key,
            products: products,
            totalPrice: totalPrice,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentRouteArgs>();
      return _i50.PaymentScreen(
        key: args.key,
        products: args.products,
        totalPrice: args.totalPrice,
        user: args.user,
      );
    },
  );
}

class PaymentRouteArgs {
  const PaymentRouteArgs({
    this.key,
    required this.products,
    this.totalPrice,
    this.user,
  });

  final _i92.Key? key;

  final List<_i97.ProductModel> products;

  final double? totalPrice;

  final _i98.UserModel? user;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, products: $products, totalPrice: $totalPrice, user: $user}';
  }
}

/// generated route for
/// [_i51.PaymentSettings]
class PaymentSettings extends _i91.PageRouteInfo<void> {
  const PaymentSettings({List<_i91.PageRouteInfo>? children})
      : super(
          PaymentSettings.name,
          initialChildren: children,
        );

  static const String name = 'PaymentSettings';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i51.PaymentSettings();
    },
  );
}

/// generated route for
/// [_i52.PaymentSuccessfulScreen]
class PaymentSuccessfulRoute extends _i91.PageRouteInfo<void> {
  const PaymentSuccessfulRoute({List<_i91.PageRouteInfo>? children})
      : super(
          PaymentSuccessfulRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentSuccessfulRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i52.PaymentSuccessfulScreen();
    },
  );
}

/// generated route for
/// [_i53.PostageSettings]
class PostageSettings extends _i91.PageRouteInfo<void> {
  const PostageSettings({List<_i91.PageRouteInfo>? children})
      : super(
          PostageSettings.name,
          initialChildren: children,
        );

  static const String name = 'PostageSettings';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i53.PostageSettings();
    },
  );
}

/// generated route for
/// [_i54.PriceScreen]
class PriceRoute extends _i91.PageRouteInfo<void> {
  const PriceRoute({List<_i91.PageRouteInfo>? children})
      : super(
          PriceRoute.name,
          initialChildren: children,
        );

  static const String name = 'PriceRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i54.PriceScreen();
    },
  );
}

/// generated route for
/// [_i55.PrivacySettingScreen]
class PrivacySettingRoute extends _i91.PageRouteInfo<void> {
  const PrivacySettingRoute({List<_i91.PageRouteInfo>? children})
      : super(
          PrivacySettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacySettingRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i55.PrivacySettingScreen();
    },
  );
}

/// generated route for
/// [_i56.ProductByHashtagPage]
class ProductByHashtagRoute
    extends _i91.PageRouteInfo<ProductByHashtagRouteArgs> {
  ProductByHashtagRoute({
    _i92.Key? key,
    required String hashtag,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          ProductByHashtagRoute.name,
          args: ProductByHashtagRouteArgs(
            key: key,
            hashtag: hashtag,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductByHashtagRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductByHashtagRouteArgs>();
      return _i56.ProductByHashtagPage(
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

  final _i92.Key? key;

  final String hashtag;

  @override
  String toString() {
    return 'ProductByHashtagRouteArgs{key: $key, hashtag: $hashtag}';
  }
}

/// generated route for
/// [_i57.ProductDetailScreen]
class ProductDetailRoute extends _i91.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    _i92.Key? key,
    required int productId,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          ProductDetailRoute.name,
          args: ProductDetailRouteArgs(
            key: key,
            productId: productId,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailRouteArgs>();
      return _i57.ProductDetailScreen(
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

  final _i92.Key? key;

  final int productId;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i58.ProductListScreen]
class ProductListRoute extends _i91.PageRouteInfo<void> {
  const ProductListRoute({List<_i91.PageRouteInfo>? children})
      : super(
          ProductListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductListRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i58.ProductListScreen();
    },
  );
}

/// generated route for
/// [_i59.ProductPriceFilterPage]
class ProductPriceFilterRoute
    extends _i91.PageRouteInfo<ProductPriceFilterRouteArgs> {
  ProductPriceFilterRoute({
    _i92.Key? key,
    required String title,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          ProductPriceFilterRoute.name,
          args: ProductPriceFilterRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductPriceFilterRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductPriceFilterRouteArgs>();
      return _i59.ProductPriceFilterPage(
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

  final _i92.Key? key;

  final String title;

  @override
  String toString() {
    return 'ProductPriceFilterRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i60.ProductsByBrandPage]
class ProductsByBrandRoute
    extends _i91.PageRouteInfo<ProductsByBrandRouteArgs> {
  ProductsByBrandRoute({
    _i92.Key? key,
    required String? title,
    required int? id,
    String? customBrand,
    List<_i91.PageRouteInfo>? children,
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

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductsByBrandRouteArgs>();
      return _i60.ProductsByBrandPage(
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

  final _i92.Key? key;

  final String? title;

  final int? id;

  final String? customBrand;

  @override
  String toString() {
    return 'ProductsByBrandRouteArgs{key: $key, title: $title, id: $id, customBrand: $customBrand}';
  }
}

/// generated route for
/// [_i61.ProductsByStatusScreen]
class ProductsByStatusRoute
    extends _i91.PageRouteInfo<ProductsByStatusRouteArgs> {
  ProductsByStatusRoute({
    _i92.Key? key,
    required String title,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          ProductsByStatusRoute.name,
          args: ProductsByStatusRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductsByStatusRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductsByStatusRouteArgs>();
      return _i61.ProductsByStatusScreen(
        key: args.key,
        title: args.title,
      );
    },
  );
}

class ProductsByStatusRouteArgs {
  const ProductsByStatusRouteArgs({
    this.key,
    required this.title,
  });

  final _i92.Key? key;

  final String title;

  @override
  String toString() {
    return 'ProductsByStatusRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i62.ProfileDetailsScreen]
class ProfileDetailsRoute extends _i91.PageRouteInfo<ProfileDetailsRouteArgs> {
  ProfileDetailsRoute({
    _i92.Key? key,
    required String username,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          ProfileDetailsRoute.name,
          args: ProfileDetailsRouteArgs(
            key: key,
            username: username,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileDetailsRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProfileDetailsRouteArgs>();
      return _i62.ProfileDetailsScreen(
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

  final _i92.Key? key;

  final String username;

  @override
  String toString() {
    return 'ProfileDetailsRouteArgs{key: $key, username: $username}';
  }
}

/// generated route for
/// [_i63.ProfileNavigationScreen]
class ProfileNavigationRoute extends _i91.PageRouteInfo<void> {
  const ProfileNavigationRoute({List<_i91.PageRouteInfo>? children})
      : super(
          ProfileNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileNavigationRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i63.ProfileNavigationScreen();
    },
  );
}

/// generated route for
/// [_i64.ProfileSettingScreen]
class ProfileSettingRoute extends _i91.PageRouteInfo<void> {
  const ProfileSettingRoute({List<_i91.PageRouteInfo>? children})
      : super(
          ProfileSettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileSettingRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i64.ProfileSettingScreen();
    },
  );
}

/// generated route for
/// [_i65.RecentlyViewedProductScreen]
class RecentlyViewedProductRoute
    extends _i91.PageRouteInfo<RecentlyViewedProductRouteArgs> {
  RecentlyViewedProductRoute({
    _i92.Key? key,
    required String? title,
    required int? id,
    String? customBrand,
    List<_i91.PageRouteInfo>? children,
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

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RecentlyViewedProductRouteArgs>();
      return _i65.RecentlyViewedProductScreen(
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

  final _i92.Key? key;

  final String? title;

  final int? id;

  final String? customBrand;

  @override
  String toString() {
    return 'RecentlyViewedProductRouteArgs{key: $key, title: $title, id: $id, customBrand: $customBrand}';
  }
}

/// generated route for
/// [_i66.RecordVideo]
class RecordVideo extends _i91.PageRouteInfo<RecordVideoArgs> {
  RecordVideo({
    _i92.Key? key,
    required _i94.XFile image,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          RecordVideo.name,
          args: RecordVideoArgs(
            key: key,
            image: image,
          ),
          initialChildren: children,
        );

  static const String name = 'RecordVideo';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RecordVideoArgs>();
      return _i66.RecordVideo(
        key: args.key,
        image: args.image,
      );
    },
  );
}

class RecordVideoArgs {
  const RecordVideoArgs({
    this.key,
    required this.image,
  });

  final _i92.Key? key;

  final _i94.XFile image;

  @override
  String toString() {
    return 'RecordVideoArgs{key: $key, image: $image}';
  }
}

/// generated route for
/// [_i67.ReportAccountHomepage]
class ReportAccountHomepage
    extends _i91.PageRouteInfo<ReportAccountHomepageArgs> {
  ReportAccountHomepage({
    required String selectedOption,
    required bool isOptionSelected,
    required String username,
    int? productId,
    required bool isProduct,
    _i92.Key? key,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          ReportAccountHomepage.name,
          args: ReportAccountHomepageArgs(
            selectedOption: selectedOption,
            isOptionSelected: isOptionSelected,
            username: username,
            productId: productId,
            isProduct: isProduct,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ReportAccountHomepage';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReportAccountHomepageArgs>();
      return _i67.ReportAccountHomepage(
        selectedOption: args.selectedOption,
        isOptionSelected: args.isOptionSelected,
        username: args.username,
        productId: args.productId,
        isProduct: args.isProduct,
        key: args.key,
      );
    },
  );
}

class ReportAccountHomepageArgs {
  const ReportAccountHomepageArgs({
    required this.selectedOption,
    required this.isOptionSelected,
    required this.username,
    this.productId,
    required this.isProduct,
    this.key,
  });

  final String selectedOption;

  final bool isOptionSelected;

  final String username;

  final int? productId;

  final bool isProduct;

  final _i92.Key? key;

  @override
  String toString() {
    return 'ReportAccountHomepageArgs{selectedOption: $selectedOption, isOptionSelected: $isOptionSelected, username: $username, productId: $productId, isProduct: $isProduct, key: $key}';
  }
}

/// generated route for
/// [_i68.ReportAccountOptionsPage]
class ReportAccountOptionsRoute
    extends _i91.PageRouteInfo<ReportAccountOptionsRouteArgs> {
  ReportAccountOptionsRoute({
    _i92.Key? key,
    required String username,
    required bool isProduct,
    int? productId,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          ReportAccountOptionsRoute.name,
          args: ReportAccountOptionsRouteArgs(
            key: key,
            username: username,
            isProduct: isProduct,
            productId: productId,
          ),
          initialChildren: children,
        );

  static const String name = 'ReportAccountOptionsRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReportAccountOptionsRouteArgs>();
      return _i68.ReportAccountOptionsPage(
        key: args.key,
        username: args.username,
        isProduct: args.isProduct,
        productId: args.productId,
      );
    },
  );
}

class ReportAccountOptionsRouteArgs {
  const ReportAccountOptionsRouteArgs({
    this.key,
    required this.username,
    required this.isProduct,
    this.productId,
  });

  final _i92.Key? key;

  final String username;

  final bool isProduct;

  final int? productId;

  @override
  String toString() {
    return 'ReportAccountOptionsRouteArgs{key: $key, username: $username, isProduct: $isProduct, productId: $productId}';
  }
}

/// generated route for
/// [_i69.ResetPasswordScreen]
class ResetPasswordRoute extends _i91.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i91.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i69.ResetPasswordScreen();
    },
  );
}

/// generated route for
/// [_i70.ReviewScreen]
class ReviewRoute extends _i91.PageRouteInfo<void> {
  const ReviewRoute({List<_i91.PageRouteInfo>? children})
      : super(
          ReviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReviewRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i70.ReviewScreen();
    },
  );
}

/// generated route for
/// [_i71.SearchScreen]
class SearchRoute extends _i91.PageRouteInfo<void> {
  const SearchRoute({List<_i91.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i71.SearchScreen();
    },
  );
}

/// generated route for
/// [_i72.SecurityMenuScreen]
class SecurityMenuRoute extends _i91.PageRouteInfo<void> {
  const SecurityMenuRoute({List<_i91.PageRouteInfo>? children})
      : super(
          SecurityMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'SecurityMenuRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i72.SecurityMenuScreen();
    },
  );
}

/// generated route for
/// [_i73.SellItemScreen]
class SellItemRoute extends _i91.PageRouteInfo<SellItemRouteArgs> {
  SellItemRoute({
    _i92.Key? key,
    _i97.ProductModel? product,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          SellItemRoute.name,
          args: SellItemRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'SellItemRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SellItemRouteArgs>(
          orElse: () => const SellItemRouteArgs());
      return _i73.SellItemScreen(
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

  final _i92.Key? key;

  final _i97.ProductModel? product;

  @override
  String toString() {
    return 'SellItemRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i74.SellNavigationScreen]
class SellNavigationRoute extends _i91.PageRouteInfo<void> {
  const SellNavigationRoute({List<_i91.PageRouteInfo>? children})
      : super(
          SellNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'SellNavigationRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i74.SellNavigationScreen();
    },
  );
}

/// generated route for
/// [_i75.SendAnOfferScreen]
class SendAnOfferRoute extends _i91.PageRouteInfo<SendAnOfferRouteArgs> {
  SendAnOfferRoute({
    _i92.Key? key,
    required List<_i97.ProductModel> products,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          SendAnOfferRoute.name,
          args: SendAnOfferRouteArgs(
            key: key,
            products: products,
          ),
          initialChildren: children,
        );

  static const String name = 'SendAnOfferRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SendAnOfferRouteArgs>();
      return _i75.SendAnOfferScreen(
        key: args.key,
        products: args.products,
      );
    },
  );
}

class SendAnOfferRouteArgs {
  const SendAnOfferRouteArgs({
    this.key,
    required this.products,
  });

  final _i92.Key? key;

  final List<_i97.ProductModel> products;

  @override
  String toString() {
    return 'SendAnOfferRouteArgs{key: $key, products: $products}';
  }
}

/// generated route for
/// [_i76.SettingScreen]
class SettingRoute extends _i91.PageRouteInfo<void> {
  const SettingRoute({List<_i91.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i76.SettingScreen();
    },
  );
}

/// generated route for
/// [_i77.ShopValueScreen]
class ShopValueRoute extends _i91.PageRouteInfo<void> {
  const ShopValueRoute({List<_i91.PageRouteInfo>? children})
      : super(
          ShopValueRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShopValueRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i77.ShopValueScreen();
    },
  );
}

/// generated route for
/// [_i78.SignUpScreen]
class SignUpRoute extends _i91.PageRouteInfo<void> {
  const SignUpRoute({List<_i91.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i78.SignUpScreen();
    },
  );
}

/// generated route for
/// [_i79.SizeSelectionPage]
class SizeSelectionRoute extends _i91.PageRouteInfo<void> {
  const SizeSelectionRoute({List<_i91.PageRouteInfo>? children})
      : super(
          SizeSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'SizeSelectionRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i79.SizeSelectionPage();
    },
  );
}

/// generated route for
/// [_i80.StylePage]
class StyleRoute extends _i91.PageRouteInfo<void> {
  const StyleRoute({List<_i91.PageRouteInfo>? children})
      : super(
          StyleRoute.name,
          initialChildren: children,
        );

  static const String name = 'StyleRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i80.StylePage();
    },
  );
}

/// generated route for
/// [_i81.SubCategoryProductScreen]
class SubCategoryProductRoute extends _i91.PageRouteInfo<void> {
  const SubCategoryProductRoute({List<_i91.PageRouteInfo>? children})
      : super(
          SubCategoryProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubCategoryProductRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i81.SubCategoryProductScreen();
    },
  );
}

/// generated route for
/// [_i82.SubCategoryScreen]
class SubCategoryRoute extends _i91.PageRouteInfo<SubCategoryRouteArgs> {
  SubCategoryRoute({
    _i92.Key? key,
    required List<_i99.CategoryModel> subCategories,
    required String categoryName,
    List<_i91.PageRouteInfo>? children,
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

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SubCategoryRouteArgs>();
      return _i82.SubCategoryScreen(
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

  final _i92.Key? key;

  final List<_i99.CategoryModel> subCategories;

  final String categoryName;

  @override
  String toString() {
    return 'SubCategoryRouteArgs{key: $key, subCategories: $subCategories, categoryName: $categoryName}';
  }
}

/// generated route for
/// [_i83.SubmitVideo]
class SubmitVideo extends _i91.PageRouteInfo<SubmitVideoArgs> {
  SubmitVideo({
    _i92.Key? key,
    required _i94.XFile image,
    required _i94.XFile videoFile,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          SubmitVideo.name,
          args: SubmitVideoArgs(
            key: key,
            image: image,
            videoFile: videoFile,
          ),
          initialChildren: children,
        );

  static const String name = 'SubmitVideo';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SubmitVideoArgs>();
      return _i83.SubmitVideo(
        key: args.key,
        image: args.image,
        videoFile: args.videoFile,
      );
    },
  );
}

class SubmitVideoArgs {
  const SubmitVideoArgs({
    this.key,
    required this.image,
    required this.videoFile,
  });

  final _i92.Key? key;

  final _i94.XFile image;

  final _i94.XFile videoFile;

  @override
  String toString() {
    return 'SubmitVideoArgs{key: $key, image: $image, videoFile: $videoFile}';
  }
}

/// generated route for
/// [_i84.UploadIdentityDocument]
class UploadIdentityDocument
    extends _i91.PageRouteInfo<UploadIdentityDocumentArgs> {
  UploadIdentityDocument({
    _i92.Key? key,
    required String pageTitle,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          UploadIdentityDocument.name,
          args: UploadIdentityDocumentArgs(
            key: key,
            pageTitle: pageTitle,
          ),
          initialChildren: children,
        );

  static const String name = 'UploadIdentityDocument';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UploadIdentityDocumentArgs>();
      return _i84.UploadIdentityDocument(
        key: args.key,
        pageTitle: args.pageTitle,
      );
    },
  );
}

class UploadIdentityDocumentArgs {
  const UploadIdentityDocumentArgs({
    this.key,
    required this.pageTitle,
  });

  final _i92.Key? key;

  final String pageTitle;

  @override
  String toString() {
    return 'UploadIdentityDocumentArgs{key: $key, pageTitle: $pageTitle}';
  }
}

/// generated route for
/// [_i85.UserProfileDetailsScreen]
class UserProfileDetailsRoute
    extends _i91.PageRouteInfo<UserProfileDetailsRouteArgs> {
  UserProfileDetailsRoute({
    _i92.Key? key,
    String? username,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          UserProfileDetailsRoute.name,
          args: UserProfileDetailsRouteArgs(
            key: key,
            username: username,
          ),
          rawPathParams: {'username': username},
          initialChildren: children,
        );

  static const String name = 'UserProfileDetailsRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<UserProfileDetailsRouteArgs>(
          orElse: () => UserProfileDetailsRouteArgs(
              username: pathParams.optString('username')));
      return _i85.UserProfileDetailsScreen(
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

  final _i92.Key? key;

  final String? username;

  @override
  String toString() {
    return 'UserProfileDetailsRouteArgs{key: $key, username: $username}';
  }
}

/// generated route for
/// [_i86.VerifyEmailPage]
class VerifyEmailRoute extends _i91.PageRouteInfo<VerifyEmailRouteArgs> {
  VerifyEmailRoute({
    _i92.Key? key,
    required String email,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          VerifyEmailRoute.name,
          args: VerifyEmailRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyEmailRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerifyEmailRouteArgs>();
      return _i86.VerifyEmailPage(
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

  final _i92.Key? key;

  final String email;

  @override
  String toString() {
    return 'VerifyEmailRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i87.VerifyUserScreen]
class VerifyUserRoute extends _i91.PageRouteInfo<VerifyUserRouteArgs> {
  VerifyUserRoute({
    _i92.Key? key,
    required String email,
    required bool inAppVerification,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          VerifyUserRoute.name,
          args: VerifyUserRouteArgs(
            key: key,
            email: email,
            inAppVerification: inAppVerification,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyUserRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerifyUserRouteArgs>();
      return _i87.VerifyUserScreen(
        key: args.key,
        email: args.email,
        inAppVerification: args.inAppVerification,
      );
    },
  );
}

class VerifyUserRouteArgs {
  const VerifyUserRouteArgs({
    this.key,
    required this.email,
    required this.inAppVerification,
  });

  final _i92.Key? key;

  final String email;

  final bool inAppVerification;

  @override
  String toString() {
    return 'VerifyUserRouteArgs{key: $key, email: $email, inAppVerification: $inAppVerification}';
  }
}

/// generated route for
/// [_i88.VerifyVideo]
class VerifyVideo extends _i91.PageRouteInfo<VerifyVideoArgs> {
  VerifyVideo({
    _i92.Key? key,
    required _i94.XFile image,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          VerifyVideo.name,
          args: VerifyVideoArgs(
            key: key,
            image: image,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyVideo';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerifyVideoArgs>();
      return _i88.VerifyVideo(
        key: args.key,
        image: args.image,
      );
    },
  );
}

class VerifyVideoArgs {
  const VerifyVideoArgs({
    this.key,
    required this.image,
  });

  final _i92.Key? key;

  final _i94.XFile image;

  @override
  String toString() {
    return 'VerifyVideoArgs{key: $key, image: $image}';
  }
}

/// generated route for
/// [_i89.VerifyYourIdentity]
class VerifyYourIdentity extends _i91.PageRouteInfo<void> {
  const VerifyYourIdentity({List<_i91.PageRouteInfo>? children})
      : super(
          VerifyYourIdentity.name,
          initialChildren: children,
        );

  static const String name = 'VerifyYourIdentity';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      return const _i89.VerifyYourIdentity();
    },
  );
}

/// generated route for
/// [_i90.VintageFilteredProductScreen]
class VintageFilteredProductRoute
    extends _i91.PageRouteInfo<VintageFilteredProductRouteArgs> {
  VintageFilteredProductRoute({
    _i92.Key? key,
    required _i93.Enum$StyleEnum style,
    List<_i91.PageRouteInfo>? children,
  }) : super(
          VintageFilteredProductRoute.name,
          args: VintageFilteredProductRouteArgs(
            key: key,
            style: style,
          ),
          initialChildren: children,
        );

  static const String name = 'VintageFilteredProductRoute';

  static _i91.PageInfo page = _i91.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VintageFilteredProductRouteArgs>();
      return _i90.VintageFilteredProductScreen(
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

  final _i92.Key? key;

  final _i93.Enum$StyleEnum style;

  @override
  String toString() {
    return 'VintageFilteredProductRouteArgs{key: $key, style: $style}';
  }
}
