import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/auth/views/widgets/menu_card.dart';

import '../widgets/live_card.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List menuItem1 = [
      MenuCard(
          title: "Favourite items",
          icon: Icon(Icons.favorite_border_outlined),
          onTap: () {
            context.router.push(MyFavouriteRoute());
          }),
      MenuCard(
          title: "Personalisation",
          icon: Icon(Icons.info_outlined),
          onTap: () {}),
      MenuCard(
          title: "Balance",
          subtitle: '#0.00',
          icon: Icon(Icons.wallet_outlined),
          onTap: () {}),
      MenuCard(
          title: "My Orders",
          icon: Icon(Icons.info_outlined),
          onTap: () {
            context.router.push(MyOrderRoute());
          }),
      MenuCard(
          title: "Balance discounts",
          subtitle: "off",
          icon: Icon(Icons.info_outlined),
          onTap: () {}),
      MenuCard(
          title: "Donations",
          subtitle: "off",
          icon: Icon(Icons.info_outlined),
          onTap: () {})
    ];

    List menuItem2 = [
      MenuCard(
          title: "Settings",
          icon: Icon(Icons.settings),
          onTap: () {
            context.router.push(const SettingRoute());
          }),
      MenuCard(title: "Cookie setting", icon: Icon(Icons.lock), onTap: () {}),
      MenuCard(
          title: "About Prelura",
          icon: Icon(Icons.info_outlined),
          onTap: () {}),
      MenuCard(
          title: "Legal information",
          icon: Icon(Icons.info_outlined),
          onTap: () {
            context.router.push(const LegalInformationRoute());
          }),
      MenuCard(
          title: "Our platform", icon: Icon(Icons.info_outlined), onTap: () {}),
      MenuCard(
          title: "Help Centre",
          icon: Icon(Icons.question_mark_rounded),
          onTap: () {}),
      MenuCard(
          title: "Send your feedback", icon: Icon(Icons.face), onTap: () {}),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        automaticallyImplyLeading: true,
        title: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                  child: Text("Profile",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 18,
                          )))
            ],
          ),
        ),
      ),
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(children: [
          MenuCard(
              profilePic: true,
              title: "Vimini",
              additionalText: "View my profile",
              icon: Icon(Icons.info_outlined),
              onTap: () {
                context.router.push(ProfileDetailsRoute());
              }),
          LiveCard(),
          MenuCard(
              title: "Your guide to Prelura",
              icon: Icon(Icons.info_outlined),
              onTap: () {}),
          SizedBox(
            height: 20,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: menuItem1.length,
            itemBuilder: (context, index) {
              return menuItem1[index];
            },
          ),
          SizedBox(
            height: 20,
          ),
          MenuCard(
              title: "Invite Friend",
              icon: Icon(Icons.person_add_sharp),
              onTap: () {
                context.router.push(SellItemRoute());
              }),
          SizedBox(
            height: 20,
          ),
          MenuCard(
              title: "Holiday mode",
              icon: Icon(Icons.info_outlined),
              onTap: () {
                context.router.push(HolidayModeRoute());
              }),
          SizedBox(
            height: 20,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: menuItem2.length,
            itemBuilder: (context, index) {
              return menuItem2[index];
            },
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                "Privacy Policy",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Terms & Conditions",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ]),
      ),
    );
  }
}
