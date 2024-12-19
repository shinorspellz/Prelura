import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/modules/controller/chat/conversations_provider.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';
import 'package:prelura_app/res/ui_constants.dart';

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

class _InboxScreenState extends State<InboxScreen> with SingleTickerProviderStateMixin {
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
                                color: _tabController.index == entry.key ? PreluraColors.activeColor : PreluraColors.greyColor.withOpacity(0.5),
                                width: _tabController.index == entry.key ? 2.0 : 1.0,
                              ),
                            ),
                          ),
                          child: Text(
                            entry.value,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: _tabController.index == entry.key ? Theme.of(context).textTheme.bodyMedium?.color : PreluraColors.greyLightColor,
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
                children: [ChatsTab(), NotificationsTab()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatsTab extends ConsumerWidget {
  const ChatsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(conversationProvider).maybeWhen(
        error: (e, _) {
          log(e.toString(), stackTrace: _);
          return Center(
            child: LoadingWidget(),
          );
        },
        orElse: () => Center(
              child: LoadingWidget(),
            ),
        data: (conversations) {
          if (conversations.isEmpty) {
            return Center(
              child: Text(
                "You haven't messaged any seller yet",
                style: context.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            );
          }

          return ListView.builder(
              itemCount: conversations.length,
              itemBuilder: (_, index) {
                final conv = conversations[index];

                return MessageCard(
                  model: conv,
                );
              });
        });
  }
}
