import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/card.dart';

import '../../../../controller/product/product_provider.dart';
import '../../../shimmers/grid_shimmer.dart';
import '../../../widgets/SearchWidget.dart';
import '../../../widgets/empty_screen_placeholder.dart';
import '../../../widgets/error_placeholder.dart';
import '../../../widgets/gap.dart';
import '../../sell_item/brand_view.dart';

@RoutePage()
class PartyFilteredProductScreen extends ConsumerStatefulWidget {
  const PartyFilteredProductScreen({super.key});

  static final ScrollController scrollController = ScrollController();

  @override
  _ProductFilterPageState createState() => _ProductFilterPageState();
}

class _ProductFilterPageState
    extends ConsumerState<PartyFilteredProductScreen> {
  final controller = PartyFilteredProductScreen.scrollController;

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
            .read(allProductProvider(searchQuery).notifier)
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
        appbarTitle: "Party",
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.refresh(allProductProvider(searchQuery).future);
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
                        const EdgeInsets.only(top: 16, left: 15, right: 15),
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Searchwidget(
                          padding: EdgeInsets.zero,
                          obscureText: false,
                          shouldReadOnly: false,
                          hintText: "Search for items",
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
                  sliver: ref.watch(allProductProvider(searchQuery)).when(
                      data: (products) {
                        final filteredProducts = products
                            .where((product) =>
                                product.style?.name
                                    .toLowerCase()
                                    .contains("party") ??
                                false) // Safely check for "party"
                            .toList();

                        if (filteredProducts.isEmpty) {
                          ref
                              .read(allProductProvider(searchQuery).notifier)
                              .fetchMoreData(context);
                          return SliverToBoxAdapter(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.7,
                              child: EmptyScreenPlaceholder(
                                  text: "No products found"),
                            ),
                          );
                        }
                        return SliverGrid.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.50,
                          ),
                          itemCount: filteredProducts.length,
                          itemBuilder: (context, index) {
                            return ProductCard(
                                product: filteredProducts[index]);
                          },
                        );
                      },
                      error: (e, _) {
                        return SliverFillRemaining(
                          child: ErrorPlaceholder(
                            error: "Error fetching items",
                            onTap: () {
                              ref.refresh(allProductProvider(searchQuery));
                            },
                          ),
                        );
                      },
                      loading: () => SliverToBoxAdapter(child: GridShimmer())),
                ),
                if (ref
                        .watch(allProductProvider(searchQuery))
                        .valueOrNull
                        ?.isNotEmpty ==
                    true)
                  if (ref
                      .watch(allProductProvider(searchQuery).notifier)
                      .canLoadMore())
                    if (!ref.watch(allProductProvider(searchQuery)).isLoading)
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
