import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/widgets/menu_card.dart';

import '../widgets/live_card.dart';

@RoutePage()
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List menuItem1 = [
      MenuCard(title: "Profile details", onTap: () {}),
      MenuCard(title: "Account Setting", onTap: () {}),
      MenuCard(title: "Payments", onTap: () {}),
      MenuCard(title: "Postage", onTap: () {}),
      MenuCard(title: "Security", onTap: () {}),
    ];

    List menuItem2 = [
      MenuCard(
          title: "Push notifications",
          icon: Icon(Icons.settings),
          onTap: () {}),
      MenuCard(
          title: "Email notifications", icon: Icon(Icons.lock), onTap: () {}),
    ];
    List menuItem3 = [
      MenuCard(
          title: "About Prelura",
          icon: Icon(Icons.info_outlined),
          onTap: () {}),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          "Settings",
        ),
      ),
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              onTap: () {}),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Text("Notifications",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    )),
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
          Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Text("Your app's language",
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    )),
          ),
          MenuCard(
              title: "Language",
              icon: Icon(Icons.web),
              subtitle: "English (EN)",
              onTap: () {}),
          SizedBox(
            height: 20,
          ),
          MenuCard(
              title: "Dark mode", subtitle: "System setting", onTap: () {}),
          SizedBox(
            height: 30,
          ),
        ]),
      ),
    );
  }
}
