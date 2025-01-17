import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/controller/user/user_controller.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/menu_card.dart';
import 'package:prelura_app/res/colors.dart';

import '../../res/images.dart';
import '../../res/render_svg.dart';
import 'settings/multi_buy_discount.dart';

@RoutePage()
class MenuPage extends ConsumerWidget {
  const MenuPage({super.key});
  static final ScrollController menuScrollController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = MenuPage.menuScrollController;
    final user = ref.watch(userProvider).valueOrNull;

    return Scaffold(
      appBar: PreluraAppBar(
        appbarTitle: "Menu",
        leadingIcon: IconButton(
            icon: Icon(
              Icons.close,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () async {
              context.router.popForced();
            }),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        controller: controller,
        child: Column(children: [
          // MenuCard(
          //     title: "Wardrobe",
          //     icon: const Icon(Icons.wallet),
          //     rightArrow: false,
          //     onTap: () {
          //       ref.read(tabControllerProvider).setTabIndex(0);
          //       Navigator.pop(context);
          //       // context.router.push(ProfileDetailsRoute());
          //     }),
          // MenuCard(
          //   title: "Balance",
          //   icon: Icon(
          //     Icons.wallet_outlined,
          //     color: PreluraColors.grey,
          //   ),
          //   subtitle: '£0.00',
          //   subtitleColor: PreluraColors.activeColor,
          //   rightArrow: false,
          //   onTap: () {
          //     context.pushRoute(BalanceRoute());
          //   },
          // ),

          if (user?.listing != null)
            if (user!.listing!.toInt() > 0)
              MenuCard(
                title: "Shop Value",
                icon: Icon(
                  Icons.show_chart_sharp,
                  color: PreluraColors.grey,
                ),
                rightArrow: false,
                onTap: () {
                  context.pushRoute(ShopValueRoute());
                },
              ),
          // MenuCard(
          //     // profilePic: false,
          //     title: "My Profile",
          //     icon: const Icon(Icons.info_outlined),
          //     rightArrow: false,
          //     onTap: () {
          //       context.router.push(ProfileDetailsRoute());
          //     }),
          // const LiveCard(),
          MenuCard(
              title: "Orders",
              icon: Icon(
                Icons.info_outlined,
                color: PreluraColors.grey,
              ),
              rightArrow: false,
              onTap: () {
                context.router.push(const MyOrderRoute());
              }),
          MenuCard(
              title: "Favourites",
              icon: Icon(
                Icons.favorite_border_outlined,
                color: PreluraColors.grey,
              ),
              rightArrow: false,
              onTap: () {
                context.router.push(const MyFavouriteRoute());
              }),
          MenuCard(
              title: "Settings",
              icon: Icon(
                Icons.settings,
                color: PreluraColors.grey,
              ),
              rightArrow: false,
              onTap: () {
                context.router.push(const SettingRoute());
              }),
          MenuCard(
              title: "Multi-buy discounts",
              subtitle: ref.watch(isSelectedProvider) ? "on" : "off",
              rightArrow: false,
              icon: RenderSvg(
                  svgPath: PreluraIcons.discount_svg,
                  color: PreluraColors.grey),
              onTap: () {
                context.router.push(MultiBuyDiscountRoute());
              }),
          MenuCard(
              title: "Vacation Mode",
              rightArrow: false,
              subtitle: ref.watch(userProvider).value?.isVacationMode == true
                  ? "on"
                  : "off",
              icon: RenderSvg(
                svgPath: PreluraIcons.vacation_mode_svg,
                color: PreluraColors.grey,
              ),
              onTap: () {
                context.router.push(HolidayModeRoute());
              }),
          MenuCard(
              title: "Invite Friend",
              icon: Icon(
                Icons.person_add_sharp,
                color: PreluraColors.grey,
              ),
              rightArrow: false,
              onTap: () {
                // context.router.push(const SellItemRoute());
              }),
          // MenuCard(
          //     title: "Holiday mode",
          //     icon: const Icon(Icons.info_outlined),
          //     onTap: () {
          //       context.router.push(const HolidayModeRoute());
          //     }),

          MenuCard(
              title: "Help Centre",
              icon: Icon(
                Icons.question_mark_rounded,
                color: PreluraColors.grey,
              ),
              rightArrow: false,
              onTap: () {}),
          MenuCard(
              title: "About Prelura",
              icon: Icon(
                Icons.info_outlined,
                color: PreluraColors.grey,
              ),
              rightArrow: false,
              onTap: () {
                context.router.push(const AboutPreluraMenuRoute());
              }),
          const SizedBox(
            height: 20,
          ),

          const SizedBox(
            height: 30,
          ),
        ]),
      ),
    );
  }
}
