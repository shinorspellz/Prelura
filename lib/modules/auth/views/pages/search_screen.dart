import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/widgets/SearchWidget.dart';

import '../../../../core/router/router.gr.dart';
import '../../../../res/colors.dart';
import '../widgets/menu_card.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Searchwidget(
                hintText: "Search for items or members",
                obscureText: false,
                shouldReadOnly: false,
                enabled: true,
                showInputBorder: true,
                autofocus: false,
                cancelButton: true),
            MenuCard(
                title: "Women",
                icon: Icon(
                  Icons.settings,
                  color: PreluraColors.activeColor,
                ),
                onTap: () {
                  context.router.push(const SettingRoute());
                }),
            MenuCard(
                title: "Men",
                icon: Icon(
                  Icons.lock,
                  color: PreluraColors.activeColor,
                ),
                onTap: () {}),
            MenuCard(
                title: "Designer",
                icon: Icon(
                  Icons.info_outlined,
                  color: PreluraColors.activeColor,
                ),
                onTap: () {}),
            MenuCard(
                title: "kids",
                icon: Icon(
                  Icons.info_outlined,
                  color: PreluraColors.activeColor,
                ),
                onTap: () {}),
            MenuCard(
                title: "Home",
                icon: Icon(
                  Icons.info_outlined,
                  color: PreluraColors.activeColor,
                ),
                onTap: () {}),
            MenuCard(
                title: "Electronics",
                icon: Icon(
                  Icons.power_input,
                  color: PreluraColors.activeColor,
                ),
                onTap: () {}),
            MenuCard(
                title: "Entertainment",
                icon: const Icon(
                  Icons.face,
                  color: PreluraColors.activeColor,
                ),
                onTap: () {}),
            MenuCard(
                title: "Pet care",
                icon: const Icon(
                  Icons.face,
                  color: PreluraColors.activeColor,
                ),
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}
