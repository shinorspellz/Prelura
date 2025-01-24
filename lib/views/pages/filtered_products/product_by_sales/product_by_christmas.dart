import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/views/pages/search_result/view/search_result.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/card.dart';

import '../../../../controller/product/product_provider.dart';
import '../../../shimmers/grid_shimmer.dart';
import '../../../widgets/SearchWidget.dart';
import '../../../widgets/filters_options.dart';
import '../../profile_details/widgets/no_product_widget.dart';
import '../../sell_item/brand_view.dart';

@RoutePage()
class ChristmasFilteredProductScreen extends ConsumerStatefulWidget {
  const ChristmasFilteredProductScreen({super.key, required this.style});
  final Enum$StyleEnum style;

  static final ScrollController scrollController = ScrollController();

  @override
  _ProductFilterPageState createState() => _ProductFilterPageState();
}

class _ProductFilterPageState
    extends ConsumerState<ChristmasFilteredProductScreen> {
  final controller = ChristmasFilteredProductScreen.scrollController;

  @override
  void initState() {
    super.initState();
    Future.microtask(
      () {
        ref.read(selectedFilteredProductProvider.notifier).state =
            Input$ProductFiltersInput(style: widget.style);
      },
    );
    controller.addListener(() {
      if (!mounted) return; // Guard against unmounted state
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        if (ref.read(paginatingHome)) return;
        ref
            .read(filteredProductProvider((searchQuery)).notifier)
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
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.popForced(),
          ),
          centerTitle: true,
          appbarTitle: widget.style.name
              .replaceAll('_', ' ')
              .split(' ')
              .map((word) => word.isNotEmpty
                  ? word[0].toUpperCase() + word.substring(1).toLowerCase()
                  : '')
              .join(' ')),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.refresh(filteredProductProvider(searchQuery).future);
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
                  delegate: FilteredProductStaticSliverDelegate(
                      child: Container(
                    padding:
                        const EdgeInsets.only(top: 10, left: 15, right: 15),
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
                        FiltersOptions(
                            excludedFilterTypes: [FilterTypes.style],
                            onTap: () {
                              ref
                                      .read(selectedFilteredProductProvider
                                          .notifier)
                                      .state =
                                  Input$ProductFiltersInput(
                                      style: widget.style);
                            }),
                      ],
                    ),
                  )),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                  sliver: ref.watch(filteredProductProvider(searchQuery)).when(
                      data: (products) {
                        if (products.isEmpty) {
                          return SliverToBoxAdapter(
                            child: NoProductWidget(
                              height: MediaQuery.of(context).size.height * 0.65,
                            ),

                            // SizedBox(
                            //   height: MediaQuery.of(context).size.height * 0.7,
                            //   child: Center(
                            //     child: Text(
                            //       "No products found",
                            //       style: Theme.of(context).textTheme.bodyLarge,
                            //     ),
                            //   ),
                            // ),
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
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            return ProductCard(product: products[index]);
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
                                Text("An error occurred"),
                                TextButton.icon(
                                  onPressed: () {
                                    // log(e.toString(), stackTrace: _);
                                    ref.invalidate(filteredProductProvider);
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
                        .watch(filteredProductProvider(searchQuery))
                        .valueOrNull
                        ?.isNotEmpty ==
                    true)
                  if (ref
                      .watch(filteredProductProvider(searchQuery).notifier)
                      .canLoadMore())
                    if (!ref
                        .watch(filteredProductProvider(searchQuery))
                        .isLoading)
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

class FilteredProductStaticSliverDelegate
    extends SliverPersistentHeaderDelegate {
  final Widget child;

  FilteredProductStaticSliverDelegate({required this.child});

  @override
  double get minExtent => 110.8;

  @override
  double get maxExtent => 110.8;

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
