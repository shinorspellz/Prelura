import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_bar.dart';

import '../../../../res/colors.dart';
import '../../../../res/images.dart';
import '../widgets/message_card.dart';

@RoutePage()
class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreluraAppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          centerTitle: true,
          appbarTitle: "inbox",
          trailingIcon: [],
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
                  text: "Messages",
                ),
                Tab(
                  text: "Notifications",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    children: const [
                      MessageCard(
                        username: 'leafcharles',
                        message: 'Ok thank you',
                        time: '17 hours ago',
                        avatarUrl: PreluraIcons.Image,
                        itemImageUrl: PreluraIcons.Image,
                      ),
                      MessageCard(
                        username: 'miayapereira',
                        message: '£17.00',
                        time: '3 days ago',
                        avatarUrl: PreluraIcons.Image,
                        itemImageUrl: PreluraIcons.Image,
                      ),
                      MessageCard(
                        username: 'mariama1229',
                        message: '£16.00',
                        time: '3 days ago',
                        avatarUrl: PreluraIcons.Image,
                        itemImageUrl: PreluraIcons.Image,
                      ),
                      MessageCard(
                        username: 'alex_t_2009',
                        message: '£15.00',
                        time: '3 days ago',
                        avatarUrl: PreluraIcons.Image,
                        itemImageUrl: PreluraIcons.Image,
                      ),
                    ],
                  ),
                  const Center(
                    child: Text(
                      "Settings Tab Content",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
