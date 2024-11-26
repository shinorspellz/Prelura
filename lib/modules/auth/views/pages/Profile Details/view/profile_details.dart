import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/pages/Profile%20Details/view/about_profile.dart';
import 'package:prelura_app/modules/auth/views/pages/Profile%20Details/view/review_tab.dart';
import 'package:prelura_app/modules/auth/views/pages/Profile%20Details/view/user_wardrobe.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route/annotations.dart';

import '../../../../../../res/colors.dart';

@RoutePage()
class ProfileDetailsScreen extends StatefulWidget {
  const ProfileDetailsScreen({super.key});

  @override
  State<ProfileDetailsScreen> createState() => _ProfileDetailsScreenState();
}

class _ProfileDetailsScreenState extends State<ProfileDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreluraAppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appbarTitle: "Lonin2999",
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => AutoRouter.of(context).popForced(),
        ),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
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
            tabs: const [
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
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                UserWardrobe(),
                ReviewTab(),
                AboutProfile(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
