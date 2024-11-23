import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widgets/menu_card.dart';

@RoutePage()
class LegalInformationScreen extends StatelessWidget {
  const LegalInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List menuItem1 = [
      MenuCard(title: "Terms & Conditions", onTap: () {}),
      MenuCard(title: "Privacy Policy", onTap: () {}),
      MenuCard(title: "Acknowledgrments", onTap: () {}),
      MenuCard(title: "HMRC reporting centre", onTap: () {})
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
        centerTitle: true,
        title: Text("Legal Information",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 18,
                )),
      ),
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
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
        ]),
      ),
    );
  }
}
