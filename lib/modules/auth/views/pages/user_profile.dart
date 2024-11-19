import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/widgets/menu_card.dart';

import '../widgets/live_card.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
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
              Expanded(child: Text("Profile", textAlign: TextAlign.center))
            ],
          ),
        ),
      ),
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            LiveCard(),
            MenuCard(
                title: "Your guide to Vinted",
                icon: Icon(Icons.info_outlined),
                onTap: () {}),
            MenuCard(
                title: "Favourite items",
                icon: Icon(Icons.favorite_border_outlined),
                onTap: () {}),
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
                onTap: () {}),
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
          ],
        ),
      ),
    );
  }
}
