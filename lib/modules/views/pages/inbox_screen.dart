import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';

import '../../../res/colors.dart';
import '../../../res/images.dart';
import '../widgets/message_card.dart';
import 'Notifications/view/notification_view.dart';

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

    // Add a listener to sync tab changes
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        setState(() {}); // Trigger UI update for custom tabs
      }
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
          appbarTitle: "Inbox",
          trailingIcon: const [],
        ),
        body: Column(
          children: [
            Row(
              children: ["Messages", "Notifications"]
                  .asMap()
                  .entries
                  .map(
                    (entry) => Expanded(
                      child: GestureDetector(
                        onTap: () {
                          _tabController.animateTo(entry.key);
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 12,
                            bottom: 18,
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: _tabController.index == entry.key
                                    ? PreluraColors.activeColor
                                    : PreluraColors.greyColor.withOpacity(0.5),
                                width: _tabController.index == entry.key
                                    ? 2.0
                                    : 1.0,
                              ),
                            ),
                          ),
                          child: Text(
                            entry.value,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: _tabController.index == entry.key
                                  ? Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.color
                                  : PreluraColors.greyLightColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
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
                  NotificationsTab()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
