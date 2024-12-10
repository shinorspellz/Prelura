import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';
import 'package:prelura_app/modules/views/widgets/display_live_card.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';
import 'package:prelura_app/res/colors.dart';

import '../widgets/SearchWidget.dart';
import '../widgets/card.dart';
import '../widgets/display_section.dart';
import '../widgets/gap.dart';

final selectedTabProvider = StateProvider<int>((ref) => 0);

@RoutePage()
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  static final ScrollController homeScrollController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTab = ref.watch(selectedTabProvider);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: RefreshIndicator(
            onRefresh: () => ref.refresh(allProductProvider.future),
            child: CustomScrollView(
              controller: homeScrollController,
              slivers: [
                SliverPersistentHeader(
                  pinned: true, // Keeps it static
                  delegate: StaticSliverDelegate(
                      child: Container(
                    padding: const EdgeInsets.only(top: 16),
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Searchwidget(
                          padding: EdgeInsets.zero,
                          obscureText: false,
                          shouldReadOnly: false,
                          hintText: "Search for items and members",
                          enabled: true,
                          showInputBorder: true,
                          autofocus: false,
                          cancelButton: true,
                        ),
                        addVerticalSpacing(12),
                        _buildTabs(ref, selectedTab, context)
                      ],
                    ),
                  )),
                ),
                SliverToBoxAdapter(
                  child: _buildSectionTitle('Collection from Seller', "Items selected by amyleeliu", context),
                ),
                ref.watch(allProductProvider).when(
                    data: (products) => SliverGrid.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.572,
                          ),
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            return ProductCard(product: products[index]);
                          },
                        ),
                    error: (e, _) => SliverToBoxAdapter(
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
                        ),
                    loading: () => const SliverToBoxAdapter(child: LoadingWidget())),
                // SliverFillRemaining(
                //   child: ref.watch(allProductProvider).when(
                //       data: (products) => DisplaySection(
                //             products: products,
                //             isScrollable: true,
                //           ),
                //       error: (e, _) => Center(
                //             child: Column(
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               mainAxisSize: MainAxisSize.min,
                //               children: [
                //                 Text(e.toString()),
                //                 TextButton.icon(
                //                   onPressed: () {
                //                     // log(e.toString(), stackTrace: _);
                //                     ref.invalidate(allProductProvider);
                //                   },
                //                   label: const Text('Retry'),
                //                   icon: const Icon(Icons.refresh_rounded),
                //                 ),
                //               ],
                //             ),
                //           ),
                //       loading: () => const LoadingWidget()),
                // ),
                // Container(
                //   padding: const EdgeInsets.all(10),
                //   child: const Column(
                //     children: [
                //       // _buildSectionTitle('Collection from Seller', "Items selected by amyleeliu", context),
                //       // const DisplaySection(),
                //       // _buildSectionTitle('Antropologies', "Items selected by amyleeliu", context),
                //       // const DisplaySection(),
                //       // _buildSectionTitle('Recommended for You', "Items selected by amyleeliu", context),
                //       // const DisplaySection(),
                //       // const SizedBox(
                //       //   height: 12,
                //       // ),
                //       // const DisplayLiveCard(),
                //       // const SizedBox(
                //       //   height: 12,
                //       // ),
                //       // _buildSectionTitle('Antropologies', "Items selected by amyleeliu", context),
                //       // const DisplaySection(),
                //       // _buildSectionTitle('Recommended for You', "Items selected by amyleeliu", context),
                //       // const DisplaySection(),
                //       // _buildSectionTitle('Recommended for You', "Items selected by amyleeliu", context),
                //       // const DisplaySection(),
                //       // const SizedBox(
                //       //   height: 30,
                //       // )
                //     ],
                //   ),
                // )
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
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

Widget _buildTabs(WidgetRef ref, int selectedTab, context) {
  final tabs = ["All", "Premium Brands", "Electronics", "Books"];

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
}

Widget _buildSectionTitle(String MainTitle, String subtitle, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              MainTitle,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 1,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        TextButton(onPressed: () {}, child: Text("See All", style: Theme.of(context).textTheme.bodySmall))
      ],
    ),
  );
}
