import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../res/colors.dart';
import '../../../../res/images.dart';
import '../widgets/message_card.dart';

@RoutePage()
class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text("inbox",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 18,
                        )),
              ),
              const Icon(CupertinoIcons.envelope_badge)
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
            tabs: const [
              Tab(
                text: "Messages",
              ),
              Tab(
                text: "Notifications",
              ),
            ],
          ),
        ),
        body: TabBarView(
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
    );
  }
}
