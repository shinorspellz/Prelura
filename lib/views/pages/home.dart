import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/controller/refresh_provider.dart';
import 'package:prelura_app/controller/search_history_provider.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/images.dart';
import 'package:prelura_app/views/pages/home_tabs/all_tabs.dart';
import 'package:prelura_app/views/pages/search/search_helper_box.dart';
import 'package:prelura_app/views/pages/search_result/provider/search_provider.dart';
import 'package:prelura_app/views/pages/sell_item/brand_view.dart';

import '../../core/graphql/__generated/schema.graphql.dart';
import '../../model/product/product_model.dart';
import '../widgets/SearchWidget.dart';
import '../widgets/gap.dart';
import 'home_tabs/filter tabs.dart';

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
  bool showSearchInfoField = false;

  @override
  void initState() {
    controller.addListener(() {
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.sizeOf(context).height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        if (ref.read(paginatingHome)) return;
        ref.read(allProductProvider(null).notifier).fetchMoreData(context);
        final selectedId = ref.watch(selectedIdProvider);

        if (ref.watch(selectedTabProvider) != 0 &&
            ref.watch(selectedTabProvider) != 1) {
          ref
              .read(filteredProductProvider(searchQuery).notifier)
              .fetchMoreData();
        }
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
      return canLoadMore && !isLoading
          ? const SliverToBoxAdapter(child: PaginationLoadingIndicator())
          : const SliverToBoxAdapter(); // Empty placeholder if no indicator
    }

// Inside the `CustomScrollView` slivers
    SliverToBoxAdapter paginationIndicator;

    if (ref.watch(selectedTabProvider) != 0 &&
        ref.watch(selectedTabProvider) != 1) {
      final selectedId = ref.watch(selectedIdProvider);
      log("i am here");
      paginationIndicator = buildPaginationIndicator(
          canLoadMore: ref
              .read(filteredProductProvider(searchQuery).notifier)
              .canLoadMore(),
          isLoading: ref.watch(filteredProductProvider(searchQuery)).isLoading);
    } else {
      log("i am here");
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
              ref
                  .read(homeRefreshProvider.notifier)
                  .refreshHome(ref.read(selectedNameProvider), searchQuery);
            },
            child: CustomScrollView(
              controller: controller,
              // physics: NeverScrollableScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Column(children: [
                    Row(children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 2, right: 15),
                        child: Transform.scale(
                          scale: 6,
                          child: GestureDetector(
                            onTap: () {
                              ref
                                  .read(homeRefreshProvider.notifier)
                                  .refreshHome('', '');
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
                          onTap: () =>
                              context.pushRoute(const MyFavouriteRoute()),
                          child: const Icon(
                            Icons.favorite,
                            size: 30,
                            color: PreluraColors.activeColor,
                          ),
                        ),
                      ),
                      10.horizontalSpacing,
                    ]),
                  ]),
                ),
                SliverPersistentHeader(
                  pinned: true, // Keeps it static
                  delegate: StaticSliverDelegate(
                      isSearching: showSearchInfoField,
                      child: Container(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 15,
                          right: 15,
                        ),
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
                                controller: ref.read(searchTextController),
                                showInputBorder: true,
                                autofocus: false,
                                cancelButton: true,
                                onFocused: (val) {
                                  showSearchInfoField = val;
                                  setState(() {});
                                },
                                onChanged: (val) {
                                  searchQuery = val;
                                  ref
                                      .read(searchHistoryQueryProvider.notifier)
                                      .state = val;
                                  setState(() {});
                                },
                              ),
                              addVerticalSpacing(9),
                              if (!showSearchInfoField)
                                _buildTabs(
                                  ref,
                                  selectedTab,
                                  context,
                                  searchQuery,
                                  controller,
                                )
                            ]),
                      )),
                ),
                if (showSearchInfoField)
                  SliverToBoxAdapter(
                    child: SearchHelperBox(
                      onItemSelected: () {
                        showSearchInfoField = false;
                        searchQuery = ref.read(searchTextController).text;
                        setState(() {});
                      },
                    ),
                  )
                else
                  SliverToBoxAdapter(child: _buildTabContent(selectedTab)),
                if (!showSearchInfoField) paginationIndicator
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
  final bool isSearching;

  StaticSliverDelegate({required this.child, this.isSearching = false});

  @override
  double get minExtent => isSearching == true ? 68.8 : 102.8;

  @override
  double get maxExtent => isSearching ? 68.8 : 102.8;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

Widget _buildTabs(WidgetRef ref, int selectedTab, context, String searchQuery,
    ScrollController controller) {
  final tabs = ["All", "Premium Brands", "Women", "Men", "Kids"];

  return Builder(builder: (context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
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
                final matchingCategory =
                    category.where((e) => e.name == tabs[index]).firstOrNull;
                if (matchingCategory != null) {
                  ref.read(selectedFilteredProductProvider.notifier).state =
                      Input$ProductFiltersInput(
                          category: int.parse(matchingCategory.id));
                  ref.read(selectedIdProvider.notifier).state =
                      int.parse(matchingCategory.id);
                }
              }
            },
            child: Container(
              padding: const EdgeInsets.only(right: 10.0, left: 10, bottom: 7),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: selectedTab == index
                              ? PreluraColors.activeColor
                              : Colors.transparent))),
              child: Center(
                child: Text(
                  tabs[index],
                  style: TextStyle(
                    color: selectedTab == index
                        ? Theme.of(context).textTheme.bodyMedium?.color
                        : PreluraColors.greyColor,
                    fontWeight: selectedTab == index
                        ? FontWeight.w600
                        : FontWeight.w400,
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
