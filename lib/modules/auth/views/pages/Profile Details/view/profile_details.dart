import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/pages/Profile%20Details/view/about_profile.dart';
import 'package:prelura_app/modules/auth/views/pages/Profile%20Details/view/review_tab.dart';
import 'package:prelura_app/modules/auth/views/pages/Profile%20Details/view/user_wardrobe.dart';

import '../../../../../../res/colors.dart';

@RoutePage()
class ProfileDetailsScreen extends StatelessWidget {
  const ProfileDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text("Lonin2999",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 18,
                        )),
              ),
              Icon(CupertinoIcons.envelope_badge)
            ],
          ),
          bottom: TabBar(
            indicatorColor: PreluraColors.activeColor,
            unselectedLabelColor:
                PreluraColors.greyLightColor, // Text color for inactive tabs
            labelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16, // Font size for the active tab
            ),
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 14, // Font size for inactive tabs
            ),
            tabs: [
              Tab(
                text: "Wardrobe",
              ),
              Tab(
                text: "Reviews",
              ),
              Tab(
                text: "About",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            UserWardrobe(),
            ReviewTab(),
            AboutProfile(),
          ],
        ),
      ),
    );
  }
}
