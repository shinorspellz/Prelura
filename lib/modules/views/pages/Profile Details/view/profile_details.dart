import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/controller/user/user_controller.dart';
import 'package:prelura_app/modules/views/pages/Profile%20Details/view/about_profile.dart';
import 'package:prelura_app/modules/views/pages/Profile%20Details/view/review_tab.dart';
import 'package:prelura_app/modules/views/pages/Profile%20Details/view/user_wardrobe.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route/annotations.dart';
import 'package:prelura_app/modules/views/widgets/gesture_navigator.dart';

import '../../../../../res/colors.dart';
import '../provider/tab_controller.dart';

@RoutePage()
class ProfileDetailsScreen extends ConsumerStatefulWidget {
  const ProfileDetailsScreen({super.key, this.username});
  final String? username;

  @override
  ConsumerState<ProfileDetailsScreen> createState() => _ProfileDetailsScreenState();
}

class _ProfileDetailsScreenState extends ConsumerState<ProfileDetailsScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    // Get the initial index from the provider
    final initialIndex = ref.read(tabControllerProvider).currentIndex;

    _tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: initialIndex,
    );

    // Listen for tab index changes
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        ref.read(tabControllerProvider).setTabIndex(_tabController.index);
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
    final currentIndex = ref.watch(tabControllerProvider).currentIndex;
    final user = ref.watch((widget.username != null ? otherUserProfile(widget.username!) : userProvider)).valueOrNull;

    if (_tabController.index != currentIndex) {
      _tabController.index = currentIndex; // Sync tab index if changed externally
    }

    return Scaffold(
      appBar: PreluraAppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appbarTitle: user?.username ?? "--",
        leadingIcon: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            indicatorColor: PreluraColors.activeColor,
            unselectedLabelColor: PreluraColors.greyLightColor, // Text color for inactive tabs
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
                ref.watch((widget.username != null ? otherUserProfile(widget.username!) : userProvider)).when(
                      data: (_) => UserWardrobe(
                        username: widget.username,
                      ),
                      error: (e, _) => Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('An error occured!'),
                          TextButton.icon(
                            onPressed: () => ref.invalidate(userProvider),
                            label: const Text('Retry'),
                            icon: const Icon(Icons.refresh_rounded),
                          ),
                        ],
                      ),
                      loading: () => const Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 2.5,
                        ),
                      ),
                    ),

                // const UserWardrobe(),
                const ReviewTab(),
                AboutProfile(
                  username: widget.username,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
