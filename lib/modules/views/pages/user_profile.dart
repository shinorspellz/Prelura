import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/menu_card.dart';
import 'package:prelura_app/modules/views/widgets/profile_stats_card.dart';
import 'package:prelura_app/res/colors.dart';

import 'Profile Details/provider/tab_controller.dart';

@RoutePage()
class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});
  static final ScrollController menuScrollController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ProfileScreen.menuScrollController;
    return Scaffold(
      appBar: const PreluraAppBar(
        appbarTitle: "Menu",
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        controller: controller,
        child: Column(children: [
          const ProfileStatsCard(),
          MenuCard(
              title: "Wardrobe",
              icon: const Icon(Icons.wallet),
              rightArrow: false,
              onTap: () {
                ref.read(tabControllerProvider).setTabIndex(0);
                context.router.push(ProfileDetailsRoute());
              }),
          MenuCard(
              title: "Balance",
              icon: const Icon(Icons.wallet_outlined),
              subtitle: '£0.00',
              subtitleColor: PreluraColors.activeColor,
              rightArrow: false,
              onTap: () {}),
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
              icon: const Icon(Icons.info_outlined),
              rightArrow: false,
              onTap: () {
                context.router.push(const MyOrderRoute());
              }),
          MenuCard(
              title: "Favourites",
              icon: const Icon(Icons.favorite_border_outlined),
              rightArrow: false,
              onTap: () {
                context.router.push(const MyFavouriteRoute());
              }),
          MenuCard(
              title: "Discounts",
              subtitle: "off",
              rightArrow: false,
              icon: const Icon(Icons.info_outlined),
              onTap: () {}),
          MenuCard(
              title: "Invite Friend",
              icon: const Icon(Icons.person_add_sharp),
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
              title: "Settings",
              icon: const Icon(Icons.settings),
              rightArrow: false,
              onTap: () {
                context.router.push(const SettingRoute());
              }),
          MenuCard(
              title: "Help Centre",
              icon: const Icon(Icons.question_mark_rounded),
              rightArrow: false,
              onTap: () {}),
          MenuCard(
              title: "About Prelura",
              icon: const Icon(Icons.info_outlined),
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
