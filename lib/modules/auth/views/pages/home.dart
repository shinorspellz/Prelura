import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/auth/views/widgets/display_live_card.dart';

import '../widgets/SearchWidget.dart';
import '../widgets/display_section.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Searchwidget(
                  obscureText: false,
                  shouldReadOnly: false,
                  hintText: "Search for items and members",
                  enabled: true,
                  showInputBorder: true,
                  autofocus: false,
                  cancelButton: true),
              _buildSectionTitle('Collection from Seller',
                  "Items selected by amyleeliu", context),
              const DisplaySection(),
              _buildSectionTitle(
                  'Antropologies', "Items selected by amyleeliu", context),
              const DisplaySection(),
              _buildSectionTitle('Recommended for You',
                  "Items selected by amyleeliu", context),
              const DisplaySection(),
              const DisplayLiveCard(),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildSectionTitle(
    String MainTitle, String subtitle, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 10,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              MainTitle,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        TextButton(
            onPressed: () {},
            child:
                Text("See All", style: Theme.of(context).textTheme.bodySmall))
      ],
    ),
  );
}
