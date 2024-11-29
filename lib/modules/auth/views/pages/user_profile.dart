import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/auth/views/widgets/menu_card.dart';
import 'package:prelura_app/res/colors.dart';

import '../widgets/live_card.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List menuItem1 = [
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
      // MenuCard(
      //     title: "Personalisation",
      //     icon: const Icon(Icons.info_outlined),
      //     onTap: () {}),
      MenuCard(
          title: "Balance",
          subtitle: '£0.00',
          subtitleColor: PreluraColors.activeColor,
          icon: const Icon(Icons.wallet_outlined),
          rightArrow: false,
          onTap: () {}),
      MenuCard(
          title: "Discounts",
          subtitle: "off",
          rightArrow: false,
          icon: const Icon(Icons.info_outlined),
          onTap: () {}),
      // MenuCard(
      //     title: "Donations",
      //     subtitle: "off",
      //     icon: const Icon(Icons.info_outlined),
      //     onTap: () {})
    ];

    List menuItem2 = [
      MenuCard(
          title: "Settings",
          icon: const Icon(Icons.settings),
          rightArrow: false,
          onTap: () {
            context.router.push(const SettingRoute());
          }),
      // MenuCard(
      //     title: "Cookie setting", icon: const Icon(Icons.lock), onTap: () {}),

      // MenuCard(
      //     title: "Legal information",
      //     icon: const Icon(Icons.info_outlined),
      //     onTap: () {
      //       context.router.push(const LegalInformationRoute());
      //     }),
      // MenuCard(
      //     title: "Our platform",
      //     icon: const Icon(Icons.info_outlined),
      //     onTap: () {}),
      MenuCard(
          title: "Help Centre",
          icon: const Icon(Icons.question_mark_rounded),
          rightArrow: false,
          onTap: () {}),
      // MenuCard(
      //     title: "Send your feedback",
      //     icon: const Icon(Icons.face),
      //     onTap: () {}),
      MenuCard(
          title: "About Prelura",
          icon: const Icon(Icons.info_outlined),
          rightArrow: false,
          onTap: () {
            context.router.push(AboutPreluraMenuRoute());
          }),
    ];
    return Scaffold(
      appBar: PreluraAppBar(
        appbarTitle: "Profile",
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(children: [
          MenuCard(
              profilePic: true,
              title: "Vimini",
              additionalText: "View my profile",
              icon: const Icon(Icons.info_outlined),
              rightArrow: false,
              onTap: () {
                context.router.push(const ProfileDetailsRoute());
              }),
          // const LiveCard(),
          // MenuCard(
          //     title: "Your guide to Prelura",
          //     icon: const Icon(Icons.info_outlined),
          //     onTap: () {}),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: menuItem1.length,
            itemBuilder: (context, index) {
              return menuItem1[index];
            },
          ),
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
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: menuItem2.length,
            itemBuilder: (context, index) {
              return menuItem2[index];
            },
          ),
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
