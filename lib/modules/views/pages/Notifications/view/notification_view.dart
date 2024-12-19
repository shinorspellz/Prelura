import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';
import 'package:prelura_app/modules/views/widgets/notification_card.dart';
import '../../../../controller/notification_provider.dart';
import '../../Sell Item/view/brand_view.dart';

class NotificationsTab extends ConsumerStatefulWidget {
  static final ScrollController scrollController = ScrollController();

  @override
  _NotificationsTabState createState() => _NotificationsTabState();
}

class _NotificationsTabState extends ConsumerState<NotificationsTab> {
  final controller = NotificationsTab.scrollController;

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      if (!mounted) return; // Guard against unmounted state
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        ref.read(notificationProvider.notifier).fetchMoreData();
      }
    });
  }

  @override
  void dispose() {
    controller.removeListener(() {}); // Ensure listener is removed
    super.dispose();
  }

  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await ref.refresh(notificationProvider.future);
        if (!mounted) return; // Prevent state updates after unmounting
        setState(() {});
      },
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: CustomScrollView(
              controller: controller,
              physics: AlwaysScrollableScrollPhysics(),
              slivers: [
                ref.watch(notificationProvider).when(
                    data: (notifications) {
                      return notifications.isNotEmpty
                          ? SliverPadding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              sliver: SliverGrid.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: 0.50,
                                ),
                                itemCount: notifications.length,
                                itemBuilder: (context, index) {
                                  return NotificationCard(
                                      notification: notifications[index]);
                                },
                              ),
                            )
                          : SliverFillRemaining(
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("No notificatons yet")],
                                ),
                              ),
                            );
                    },
                    error: (e, _) {
                      return SliverToBoxAdapter(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(e.toString()),
                              TextButton.icon(
                                onPressed: () {
                                  // log(e.toString(), stackTrace: _);
                                  ref.invalidate(notificationProvider);
                                },
                                label: const Text('Retry'),
                                icon: const Icon(Icons.refresh_rounded),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    loading: () => SliverFillRemaining(
                            child: Center(
                                child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            LoadingWidget(),
                          ],
                        )))),
                if (ref.watch(notificationProvider.notifier).canLoadMore())
                  if (!ref.watch(notificationProvider).isLoading)
                    SliverToBoxAdapter(
                      child: PaginationLoadingIndicator(),
                    )
              ]),
        ),
      ),
    );
  }
}
