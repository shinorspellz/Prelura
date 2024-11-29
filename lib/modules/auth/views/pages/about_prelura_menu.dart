import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/auth/views/widgets/menu_card.dart';

import '../../../../core/router/router.gr.dart';

@RoutePage()
class AboutPreluraMenuScreen extends StatelessWidget {
  const AboutPreluraMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List menuItem1 = [
      MenuCard(title: "How to use Prelura", onTap: () {}),
      MenuCard(
          title: "Legal  Information",
          onTap: () {
            context.router.push(const LegalInformationRoute());
          }),
      MenuCard(title: "Privacy Policy ", onTap: () {}),
      MenuCard(title: "Terms & Conditions", onTap: () {}),
    ];

    List menuItem2 = [
      MenuCard(
          title: "Push notifications",
          icon: const Icon(Icons.settings),
          onTap: () {}),
      MenuCard(
          title: "Email notifications",
          icon: const Icon(Icons.lock),
          onTap: () {}),
    ];
    List menuItem3 = [
      MenuCard(
          title: "About Prelura",
          icon: const Icon(Icons.info_outlined),
          onTap: () {}),
    ];
    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
        appbarTitle: "About Prelura",
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: menuItem1.length,
            itemBuilder: (context, index) {
              return menuItem1[index];
            },
          ),
          const SizedBox(
            height: 30,
          ),
        ]),
      ),
    );
  }
}
