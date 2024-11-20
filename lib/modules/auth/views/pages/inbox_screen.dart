import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../res/colors.dart';

@RoutePage()
class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
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
            Center(
              child: Text(
                "Home Tab Content",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Center(
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
