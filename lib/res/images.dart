class PreluraIcons {
  PreluraIcons._();
  static const String ussd2Icon = 'assets/icons/ussd_2.png';
  static const String bank2Icon = 'assets/icons/bank_transfer.png';
  static const String atmIcon = 'assets/icons/atm.png';
  static const String imageLoadIcon = 'assets/icons/camera_upload.png';
  static const String bankRoundedIcon = 'assets/icons/bankIcon_rounded.png';
  static const String noAdsIcon = 'assets/icons/noAds.png';
  static const String noSearchResultIcon = 'assets/icons/noSearchResult.png';
  static const String notificationItemIcon = 'assets/icons/not_item_icon.png';
  static const String searchIcon = 'assets/icons/search.png';
  static const String facebookIcon = "assets/icons/facebook.png";
  static const String arrowRightIcon = 'assets/icons/arrow_right.png';
  static const String noResultIcon = "assets/icons/no_result.png";
  static const String noNotificationIcon = "assets/icons/notification.png";
  static const String error404Icon = "assets/icons/404.png";
  static const String noConnectionIcon = "assets/icons/no_connection.png";
  static const String successIcon = "assets/icons/success.png";
  static const String catIcon = "assets/icons/category.png";
  static const String homeIcon = "assets/icons/home.png";
  static const String orderIcon = "assets/icons/cart.png";
  static const String profileIcon = "assets/icons/profile.png";
  static const String onCatIcon = "assets/icons/on_cat.png";
  static const String onHomeIcon = "assets/icons/on_home.png";
  static const String onOrderIcon = "assets/icons/on_cart.png";
  static const String onProfileIcon = "assets/icons/on_profile.png";
  static const String settingIcon = "assets/icons/setting.png";
  static const String personIcon = "assets/icons/icon.png";
  static const String icon123 = "assets/icons/123.png";
  static const String securityIcon = "assets/icons/security.png";
  static const String onSettingIcon = "assets/icons/on_setting.png";
  static const String privacyIcon = "assets/icons/privacy.png";
  static const String paymentIcon = "assets/icons/money.png";
  static const String deliverIcon = "assets/icons/delivery.png";
  static const String notificationIcon = "assets/icons/bell.png";
  static const String themeIcon = "assets/icons/half.png";
  static const String logoutIcon = "assets/icons/logout.png";
  static const String bankIcon = "assets/icons/bank.png";
  static const String cashOnDeliveryIcon = "assets/icons/cash_delivery.png";
  static const String ussdIcon = "assets/icons/ussd.png";
  static const String cardIcon = "assets/icons/card.png";

  static const String Image = "assets/images/image2.jpeg";
  static const String van = "assets/svgs/delivery_van.svg";
  static const String mugShot = "assets/images/mugshot.jpg";
  static const String arrowLeft = "assets/icons/arrow-left.svg";
  static const String eyeSlashIcon = "assets/icons/eye-slash.svg";
  static const String eyeSlashOutline = "assets/icons/eye_slash_outline.svg";
  static const String eyeIcon = "assets/icons/eye.svg";
  static const String googleIcon = "assets/icons/google-png.png";
  static const String appleIcon = "assets/icons/apple.svg";
  static const String mailIcon = "assets/icons/mail.svg";
  static const String whiteAppleIcon = "assets/icons/white_apple.svg";
  static const String askAQuestion = "assets/svgs/chat-left-text.svg";
  static const String productImage = "assets/images/product_image.png";
  static const String home = "assets/images/home.jpg";
  static const String entertainment = "assets/images/entertainment.jpg";
  static const String electronics = "assets/images/electronics.jpg";
  static const String women = "assets/images/women.jpg";
  static const String men = "assets/images/men.jpg";
  static const String kids = "assets/images/kids.jpg";
  static const String splash = "assets/images/splash.png";
  static const String petCare = "assets/images/petcare.jpg";
  static const String webp_women = "assets/images/women.webp";
  static const String webp_men = "assets/images/men.webp";
  static const String webp_vintage = "assets/images/vintage.webp";
  static const String webp_xmas = "assets/images/xmas.webp";
  static const String webp_season = "assets/images/season.webp";
  static const String webp_jumpers = "assets/images/jumpers.webp";
  static const String menSvg = "assets/svgs/003-boy 1.svg";
  static const String women_svg = "assets/svgs/women.svg";
  static const String lipstick_svg = "assets/svgs/lipstick.svg";
  static const String electronics_svg = "assets/svgs/electronics.svg";

  static String? getConstant(String keyword) {
    // Get all static fields of this class using reflection-like behavior
    final Map<String, String> constants = {
      'electronics': electronics_svg,
      'men': menSvg,
      'women': women_svg,
      'lipstick': lipstick_svg,
      // Add the rest of the constants here...
    };

    // Find the first matching key that contains the keyword
    return constants.entries
        .firstWhere(
          (entry) => entry.key.toLowerCase().contains(keyword.toLowerCase()),
          orElse: () => const MapEntry('', ''),
        )
        .value;
  }
}
