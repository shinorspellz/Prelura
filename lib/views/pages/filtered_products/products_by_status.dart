import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/product_provider.dart';

import '../../../res/colors.dart';
import '../../shimmers/grid_shimmer.dart';
import '../../widgets/SearchWidget.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/card.dart';
import '../../widgets/gap.dart';
import '../sell_item/brand_view.dart';

@RoutePage()
class ProductsByStatusScreen extends ConsumerStatefulWidget {
  const ProductsByStatusScreen({super.key, required this.title});
  final String title;
  static final ScrollController scrollController = ScrollController();

  @override
  _ProductsByStatusScreenState createState() => _ProductsByStatusScreenState();
}

class _ProductsByStatusScreenState
    extends ConsumerState<ProductsByStatusScreen> {
  final controller = ProductsByStatusScreen.scrollController;

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      if (!mounted) return; // Guard against unmounted state
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        ref
            .read(newestProductProvider(searchQuery).notifier)
            .fetchMoreData(context);
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
    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
        centerTitle: true,
        appbarTitle: widget.title,
      ),
      //   body: productProvider.when(
      //     data: (products) => GridView.builder(
      //       padding: const EdgeInsets.all(10),
      //       controller: scrollController,
      //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 2,
      //         crossAxisSpacing: 10,
      //         mainAxisSpacing: 10,
      //         childAspectRatio: 0.52,
      //       ),
      //       itemCount: products.length,
      //       itemBuilder: (context, index) {
      //         if (index < products.length) {
      //           return ProductCard(
      //             product: products[index],
      //             isSimilar: true,
      //           );
      //         } else {
      //           if (productNotifier.canLoadMore()) {
      //             if (productProvider.isLoading) {
      //               return const PaginationLoadingIndicator();
      //             }
      //           }
      //         }
      //       },
      //     ),
      //     loading: () => GridShimmer(),
      //     error: (err, stack) => Center(
      //       child: Text(
      //         'Failed to load products: $err',
      //         style: Theme.of(context).textTheme.bodyMedium,
      //       ),
      //     ),
      //   ),
      // );

      body: RefreshIndicator(
        onRefresh: () async {
          await ref.refresh(newestProductProvider(searchQuery).future);
          if (!mounted) return; // Prevent state updates after unmounting
          setState(() {});
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: CustomScrollView(
              controller: controller,
              slivers: [
                SliverPersistentHeader(
                  pinned: true, // Keeps it static
                  delegate: StaticSliverDelegate(
                      child: Container(
                    padding:
                        const EdgeInsets.only( left: 15, right: 15),
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
                      ],
                    ),
                  )),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                  sliver: ref.watch(newestProductProvider(searchQuery)).when(
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
                            return ProductCard(product: clippedProducts[index]);
                          },
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
                                    ref.invalidate(newestProductProvider);
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
                ),
                if (ref
                    .watch(newestProductProvider(searchQuery).notifier)
                    .canLoadMore())
                  if (!ref.watch(newestProductProvider(searchQuery)).isLoading)
                    const SliverToBoxAdapter(
                      child: PaginationLoadingIndicator(),
                    )
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
  double get minExtent => 75.8;

  @override
  double get maxExtent => 75.8;

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
