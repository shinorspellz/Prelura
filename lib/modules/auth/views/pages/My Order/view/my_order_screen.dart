import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../res/colors.dart';
import '../widget/order_sub_tab.dart';

@RoutePage()
class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text("My orders",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 18,
                        )),
              ),
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
                text: "Sold",
              ),
              Tab(
                text: "Bought",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            OrderSubTabs(type: 'Sold'), // Sold tab with subtabs
            OrderSubTabs(type: 'Bought'), // Bought tab with subtabs
          ],
        ),
      ),
    );
  }
}
