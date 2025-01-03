import 'dart:developer';
import 'dart:ffi';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/modules/controller/product/brands_provider.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';
import 'package:prelura_app/modules/controller/refresh_provider.dart';
import 'package:prelura_app/modules/views/pages/Sell%20Item/view/brand_view.dart';
import 'package:prelura_app/modules/views/pages/home%20Tabs/all_tabs.dart';
import 'package:prelura_app/modules/views/pages/product_by_filters.dart';
import 'package:prelura_app/modules/views/widgets/display_live_card.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/images.dart';
import 'package:prelura_app/shared/mock_data.dart';

import '../../../core/graphql/__generated/schema.graphql.dart';
import '../../model/product/product_model.dart';
import '../shimmers/grid_shimmer.dart';
import '../widgets/SearchWidget.dart';
import '../widgets/card.dart';
import '../widgets/display_section.dart';
import '../widgets/gap.dart';
import 'home Tabs/filter tabs.dart';

final selectedTabProvider = StateProvider<int>((ref) => 0);
final selectedNameProvider = StateProvider<String>((ref) => "");
final selectedIdProvider = StateProvider<int>((ref) => 0);
final requestedProduct = StateProvider<List<ProductModel>>((ref) => []);

@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});
  static final ScrollController homeScrollController = ScrollController();

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final controller = HomeScreen.homeScrollController;

  @override
  void initState() {
    controller.addListener(() {
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.sizeOf(context).height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        if (ref.read(paginatingHome)) return;
        ref.read(allProductProvider(null).notifier).fetchMoreData();
        final selectedId = ref.watch(selectedIdProvider);

        ref
            .read(filteredProductProvider((
              Input$ProductFiltersInput(
                category: selectedId, // Use the extracted value directly
              ),
              searchQuery
            )).notifier)
            .fetchMoreData();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    // controller.dispose();
    super.dispose();
  }

  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final selectedTab = ref.watch(selectedTabProvider);

    SliverToBoxAdapter buildPaginationIndicator({
      required bool canLoadMore,
      required bool isLoading,
    }) {
      return canLoadMore && !isLoading ? const SliverToBoxAdapter(child: PaginationLoadingIndicator()) : const SliverToBoxAdapter(); // Empty placeholder if no indicator
    }

// Inside the `CustomScrollView` slivers
    SliverToBoxAdapter paginationIndicator;

    if (ref.watch(selectedTabProvider) != 0 && ref.watch(selectedTabProvider) != 1) {
      final selectedId = ref.watch(selectedIdProvider);
      log("i am here");
      paginationIndicator = buildPaginationIndicator(
          canLoadMore: ref
              .read(filteredProductProvider((
                Input$ProductFiltersInput(
                  category: selectedId, // Use the extracted value directly
                ),
                searchQuery
              )).notifier)
              .canLoadMore(),
          isLoading: ref
              .watch(filteredProductProvider((
                Input$ProductFiltersInput(
                  category: selectedId, // Use the extracted value directly
                ),
                searchQuery
              )))
              .isLoading);
    } else {
      paginationIndicator = buildPaginationIndicator(
        canLoadMore: ref.watch(allProductProvider(null).notifier).canLoadMore(),
        isLoading: ref.watch(allProductProvider(null)).isLoading,
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: RefreshIndicator(
            onRefresh: () async {
              ref.read(homeRefreshProvider.notifier).refreshHome(ref.read(selectedNameProvider), searchQuery);
            },
            child: CustomScrollView(
              controller: controller,
              // physics: NeverScrollableScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 2, right: 15),
                            child: Transform.scale(
                              scale: 6,
                              child: GestureDetector(
                                onTap: () {
                                  ref.read(homeRefreshProvider.notifier).refreshHome('', '');
                                },
                                child: Image.asset(
                                  PreluraIcons.splash,
                                  height: 20,
                                  width: 120,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: GestureDetector(
                              onTap: () => context.pushRoute(const MyFavouriteRoute()),
                              child: const Icon(
                                Icons.favorite,
                                size: 30,
                                color: PreluraColors.activeColor,
                              ),
                            ),
                          ),
                          10.horizontalSpacing,
                        ],
                      ),
                    ],
                  ),
                ),
                SliverPersistentHeader(
                  pinned: true, // Keeps it static
                  delegate: StaticSliverDelegate(
                      child: Container(
                    padding: const EdgeInsets.only(top: 16, left: 15, right: 15),
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Searchwidget(
                          padding: EdgeInsets.zero,
                          obscureText: false,
                          shouldReadOnly: false,
                          hintText: "Search items, Brands or Styles",
                          enabled: true,
                          showInputBorder: true,
                          autofocus: false,
                          cancelButton: true,
                          onChanged: (val) {
                            searchQuery = val;
                            setState(() {});
                          },
                        ),
                        addVerticalSpacing(12),
                        _buildTabs(ref, selectedTab, context, searchQuery, controller)
                      ],
                    ),
                  )),
                ),
                SliverToBoxAdapter(child: _buildTabContent(selectedTab)),
                paginationIndicator
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabContent(int selectedTab) {
    switch (selectedTab) {
      case 0:
        return HomeAllTab(
          searchQuery: searchQuery,
          controller: controller,
        ); // Replace with your actual widget for "All"
      case 1:
        return HomeAllTab(
          searchQuery: searchQuery,
          controller: controller,
        ); // Replace with your actual widget for "All"

      case 2:
        return FilterTab(
          searchQuery: searchQuery,
          id: ref.read(selectedIdProvider),
          title: ref.read(selectedNameProvider),
          products: ref.read(requestedProduct),
        );

      case 3:
        return FilterTab(
          searchQuery: searchQuery,
          id: ref.read(selectedIdProvider),
          title: ref.read(selectedNameProvider),
          products: ref.read(requestedProduct),
        ); // Replace with your actual widget for "All"

      case 4:
        return FilterTab(
          searchQuery: searchQuery,
          id: ref.read(selectedIdProvider),
          title: ref.read(selectedNameProvider),
          products: ref.read(requestedProduct),
        ); // Replace with your actual widget for "All"

      default:
        return HomeAllTab(
          searchQuery: searchQuery,
          controller: controller,
        ); // Replace with your actual widget for "All"
    }
  }
}

class StaticSliverDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  StaticSliverDelegate({required this.child});

  @override
  double get minExtent => 110.8;

  @override
  double get maxExtent => 122.8;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

Widget _buildTabs(WidgetRef ref, int selectedTab, context, String searchQuery, ScrollController controller) {
  final tabs = ["All", "Premium Brands", "Women", "Men", "Kids"];

  return Builder(builder: (context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(tabs.length, (index) {
          return GestureDetector(
            onTap: () async {
              ref.read(selectedTabProvider.notifier).state = index;
              ref.read(selectedNameProvider.notifier).state = tabs[index];
              final category = ref.watch(categoryProvider).valueOrNull;
              controller.animateTo(
                0.0,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
              if (category != null) {
                final matchingCategory = category.where((e) => e.name == tabs[index]).firstOrNull;
                if (matchingCategory != null) {
                  ref.read(selectedIdProvider.notifier).state = int.parse(matchingCategory.id);
                }
              }
            },
            child: Container(
              padding: const EdgeInsets.only(right: 10.0, left: 10, bottom: 8),
              decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: selectedTab == index ? PreluraColors.activeColor : Colors.transparent))),
              child: Center(
                child: Text(
                  tabs[index],
                  style: TextStyle(
                    color: selectedTab == index ? Theme.of(context).textTheme.bodyMedium?.color : PreluraColors.greyColor,
                    fontWeight: selectedTab == index ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  });
}
