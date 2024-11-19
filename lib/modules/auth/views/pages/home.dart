import 'package:flutter/material.dart';

import '../widgets/SearchWidget.dart';
import '../widgets/display_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Searchwidget(
                  obscureText: true,
                  shouldReadOnly: false,
                  hintText: "Search for items and members",
                  enabled: true,
                  showInputBorder: true,
                  autofocus: false,
                  cancelButton: true),
              _buildSectionTitle('Collection from Seller',
                  "Items selected by amyleeliu", context),
              DisplaySection(),
              _buildSectionTitle(
                  'Antropologies', "Items selected by amyleeliu", context),
              DisplaySection(),
              _buildSectionTitle('Recommended for You',
                  "Items selected by amyleeliu", context),
              DisplaySection(),
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
