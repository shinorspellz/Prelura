import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/controller/user/user_controller.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/modules/views/widgets/menu_card.dart';
import 'package:prelura_app/modules/views/widgets/primary_switch.dart';
import 'package:prelura_app/modules/views/widgets/profile_picture.dart';
import 'package:prelura_app/modules/views/widgets/profile_stats_card.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/helper_function.dart';

import '../../controller/theme_notifier.dart';
import 'Profile Details/provider/tab_controller.dart';

@RoutePage()
class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});
  static final ScrollController menuScrollController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ProfileScreen.menuScrollController;
    final themeNotifier = ref.read(themeNotifierProvider.notifier);
    final themeMode = ref.watch(themeNotifierProvider);

    return Scaffold(
      appBar: PreluraAppBar(
        appbarTitle: "Menu",
        // leadingIcon: IconButton(
        //   icon:
        //       Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
        //   onPressed: () => context.router.popForced(),
        // ),
        // trailingIcon: [
        //   GestureDetector(
        //     onTap: () => context.pushRoute(ProfileDetailsRoute()),
        //     child: ProfilePictureWidget(
        //       profilePicture: ref.watch(userProvider).valueOrNull?.profilePictureUrl,
        //       username: ref.watch(userProvider).valueOrNull?.username ?? '--',
        //       height: 40,
        //       width: 40,
        //     ),
        //   ),
        //   10.horizontalSpacing,
        // ],
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        controller: controller,
        child: Column(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                border: Border(
                    bottom: BorderSide(
                  color: Theme.of(context).dividerColor,
                  // Use the theme's divider color
                  width: 1.0,
                ))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dark Mode",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600, color: Theme.of(context).textTheme.bodyMedium?.color),
                ),
                PreluraSwitch(
                  swicthValue: themeMode == ThemeMode.dark,
                  onChanged: (value) {
                    themeNotifier.toggleThemeMode();
                  },
                ),
              ],
            ),
          ),
          MenuCard(
              title: "Wardrobe",
              icon: const Icon(Icons.wallet),
              rightArrow: false,
              onTap: () {
                ref.read(tabControllerProvider).setTabIndex(0);
                Navigator.pop(context);
                // context.router.push(ProfileDetailsRoute());
              }),
          MenuCard(
            title: "Balance",
            icon: const Icon(Icons.wallet_outlined),
            subtitle: '£0.00',
            subtitleColor: PreluraColors.activeColor,
            rightArrow: false,
            onTap: () {
              context.pushRoute(BalanceRoute());
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
          MenuCard(title: "Discounts", subtitle: "off", rightArrow: false, icon: const Icon(Icons.info_outlined), onTap: () {}),
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
          MenuCard(title: "Help Centre", icon: const Icon(Icons.question_mark_rounded), rightArrow: false, onTap: () {}),
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
