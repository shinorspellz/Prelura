import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/modules/controller/product/brands_provider.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';
import 'package:prelura_app/modules/views/pages/Sell%20Item/view/brand_view.dart';
import 'package:prelura_app/modules/views/widgets/display_live_card.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/images.dart';
import 'package:prelura_app/shared/mock_data.dart';

import '../shimmers/grid_shimmer.dart';
import '../widgets/SearchWidget.dart';
import '../widgets/card.dart';
import '../widgets/display_section.dart';
import '../widgets/gap.dart';

final selectedTabProvider = StateProvider<int>((ref) => 0);
final refreshingHome = StateProvider<bool>((ref) => false);

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
      // setState(() => autoScroll = false);
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.sizeOf(context).height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        if (ref.read(paginatingHome)) return;
        // if (searchQuery.isNotEmpty) {
        //   ref.read(allProductProvider(searchQuery).notifier).fetchMoreData();
        //   return;
        // }
        ref.read(allProductProvider(null).notifier).fetchMoreData();
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
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: RefreshIndicator(
            onRefresh: () async {
              ref.read(refreshingHome.notifier).state = true;
              ref
                  .refresh(allProductProvider(null).future)
                  .then((_) => ref.read(refreshingHome.notifier).state = false);
              ref.refresh(filterProductByPriceProvider(15).future);
            },
            child: CustomScrollView(
              controller: controller,
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, left: 2, right: 15),
                            child: Transform.scale(
                              scale: 6,
                              child: GestureDetector(
                                onTap: () {
                                  ref.read(refreshingHome.notifier).state =
                                      true;
                                  ref
                                      .refresh(allProductProvider(null).future)
                                      .then((_) => ref
                                          .read(refreshingHome.notifier)
                                          .state = false);
                                  ref.refresh(
                                      filterProductByPriceProvider(15).future);
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
                        ],
                      ),
                    ],
                  ),
                ),
                SliverPersistentHeader(
                  pinned: true, // Keeps it static
                  delegate: StaticSliverDelegate(
                      child: Container(
                    padding:
                        const EdgeInsets.only(top: 16, left: 15, right: 15),
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Searchwidget(
                          padding: EdgeInsets.zero,
                          obscureText: false,
                          shouldReadOnly: false,
                          hintText: "Search for items and members",
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
                        _buildTabs(ref, selectedTab, context)
                      ],
                    ),
                  )),
                ),
                if (searchQuery.isNotEmpty) ...[
                  ref.watch(allProductProvider(searchQuery)).when(
                      data: (products) {
                        return SliverPadding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          sliver: SliverGrid.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 0.50,
                            ),
                            itemCount: products.length,
                            itemBuilder: (context, index) {
                              return ProductCard(product: products[index]);
                            },
                          ),
                        );
                      },
                      error: (e, _) {
                        print(e);
                        log("${_}");
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
                                    ref.invalidate(
                                        allProductProvider(searchQuery));
                                  },
                                  label: const Text('Retry'),
                                  icon: const Icon(Icons.refresh_rounded),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      loading: () => SliverToBoxAdapter(child: GridShimmer())),
                ] else ...[
                  ref.watch(allProductProvider(null)).maybeWhen(
                        // skipLoadingOnRefresh: !ref.watch(refreshingHome),
                        data: (products) => SliverPadding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          sliver: SliverGrid.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 0.50,
                            ),
                            itemCount: products.take(6).length,
                            itemBuilder: (context, index) {
                              return ProductCard(
                                  product: products.take(6).toList()[index]);
                            },
                          ),
                        ),
                        orElse: () => SliverToBoxAdapter(child: Container()),
                      ),
                  const SliverToBoxAdapter(
                    child: Divider(
                        thickness: 1, color: PreluraColors.primaryColor),
                  ),
                  SliverToBoxAdapter(
                    child: _buildSectionTitle(
                      'Shop Bargains',
                      "Steals under £15",
                      context,
                      onTap: () => context.pushRoute(
                        ProductPriceFilterRoute(title: 'Steals under £15'),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: AspectRatio(
                      aspectRatio: 1.1,
                      // height: 320,
                      // width: MediaQuery.sizeOf(context).width,
                      child: ref
                          .watch(filterProductByPriceProvider(15))
                          .maybeWhen(
                            data: (products) => ListView.separated(
                              padding: EdgeInsets.only(left: 15),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) =>
                                  10.horizontalSpacing,
                              itemBuilder: (context, index) => SizedBox(
                                width: 180,
                                child: ProductCard(product: products[index]),
                              ),
                              itemCount: products.length,
                            ),
                            orElse: () => ListView(
                              scrollDirection: Axis.horizontal,
                              children: List.generate(
                                mockData.length,
                                (_) => Container(
                                  // height: 220,
                                  width: 180,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child:
                                      const ProductShimmer(), //DisplayCard(itemData: mockData[_]),
                                ),
                              ),
                            ),
                          ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: Divider(
                        thickness: 1, color: PreluraColors.primaryColor),
                  ),
                  SliverPadding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 15, right: 15),
                    sliver: ref.watch(allProductProvider(null)).when(
                        skipLoadingOnRefresh: !ref.watch(refreshingHome),
                        data: (products) {
                          if (products.length < 6)
                            return SliverToBoxAdapter(child: Container());
                          final clippedProducts = products.sublist(6);
                          return SliverGrid.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 0.50,
                            ),
                            itemCount: clippedProducts.length,
                            itemBuilder: (context, index) {
                              return ProductCard(
                                  product: clippedProducts[index]);
                            },
                          );
                        },
                        error: (e, _) {
                          log("${_}");
                          log(e.toString());
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
                                      ref.invalidate(allProductProvider);
                                    },
                                    label: const Text('Retry'),
                                    icon: const Icon(Icons.refresh_rounded),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        loading: () =>
                            SliverToBoxAdapter(child: GridShimmer())),
                  ),
                  if (ref
                      .watch(allProductProvider(null).notifier)
                      .canLoadMore())
                    if (!ref.watch(allProductProvider(null)).isLoading)
                      const SliverToBoxAdapter(
                        child: PaginationLoadingIndicator(),
                      )
                ]
              ],
            ),
          ),
        ),
      ),
    );
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
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

Widget _buildTabs(WidgetRef ref, int selectedTab, context) {
  final tabs = ["All", "Premium Brands", "Women", "Men", "Kids"];

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(tabs.length, (index) {
        return GestureDetector(
          onTap: () {
            ref.read(selectedTabProvider.notifier).state = index;
          },
          child: Container(
            padding: const EdgeInsets.only(right: 10.0, left: 10, bottom: 8),
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
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            ),
          ),
        );
      }),
    ),
  );
}

Widget _buildSectionTitle(
    String MainTitle, String subtitle, BuildContext context,
    {VoidCallback? onTap}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          MainTitle,
          textAlign: TextAlign.left,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontSize: 17, color: PreluraColors.primaryColor),
        ),
        const SizedBox(
          height: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              subtitle,
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: PreluraColors.greyColor),
            ),
            GestureDetector(
              onTap: onTap,
              child: Text("See All",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: PreluraColors.primaryColor)),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    ),
  );
}
