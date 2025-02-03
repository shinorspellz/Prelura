import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/model/product/product_model.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/card.dart';

import '../../controller/product/product_provider.dart';
import '../shimmers/my_favorite_shimmer.dart';
import '../widgets/SearchWidget.dart';
import '../widgets/empty_screen_placeholder.dart';
import '../widgets/error_placeholder.dart';
import '../widgets/gap.dart';
import 'profile_details/widgets/no_product_widget.dart';
import 'sell_item/brand_view.dart';

@RoutePage()
class MyFavouriteScreen extends ConsumerStatefulWidget {
  const MyFavouriteScreen({super.key});

  static final ScrollController scrollController = ScrollController();
  @override
  _MyFavouriteScreenState createState() => _MyFavouriteScreenState();
}

class _MyFavouriteScreenState extends ConsumerState<MyFavouriteScreen> {
  final controller = MyFavouriteScreen.scrollController;
  bool isSearching = false;
  List<ProductModel> filter = [];

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      if (!mounted) return; // Guard against unmounted state
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        ref.read(userFavouriteProductProvider.notifier).fetchMoreData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreluraAppBar(
          appbarTitle: "Favourite items",
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.popForced(),
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: RefreshIndicator(
          onRefresh: () async {
            await ref.refresh(userFavouriteProductProvider.future);
            if (!mounted) return; // Prevent state updates after unmounting
            setState(() {});
          },
          child: ref.watch(userFavouriteProductProvider).when(
                data: (products) {
                  return products.isEmpty
                      ? SizedBox(
                          height: MediaQuery.of(context).size.height * 0.7,
                          child: NoProductWidget(),
                        )
                      : CustomScrollView(controller: controller, slivers: [
                          SliverPersistentHeader(
                            pinned: true,
                            delegate: StaticSliverDelegate(
                                child: Container(
                              padding: const EdgeInsets.only(top: 16),
                              color: Theme.of(context).scaffoldBackgroundColor,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Searchwidget(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12),
                                    obscureText: false,
                                    shouldReadOnly: false,
                                    hintText: "Search for items",
                                    enabled: true,
                                    showInputBorder: true,
                                    autofocus: false,
                                    cancelButton: true,
                                    onChanged: (val) {
                                      isSearching = val.isNotEmpty;
                                      filter = products
                                          .where((e) => e.name
                                              .toLowerCase()
                                              .contains(val.toLowerCase()))
                                          .toList();
                                      setState(() {});
                                    },
                                  ),
                                  addVerticalSpacing(12),
                                ],
                              ),
                            )),
                          ),
                          SliverPadding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            sliver: SliverGrid(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                childAspectRatio: 0.50,
                              ),
                              delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                                  return ProductCard(
                                    product: isSearching
                                        ? filter[index]
                                        : products[index],
                                    isSimilar: true,
                                  );
                                },
                                childCount: isSearching
                                    ? filter.length
                                    : products.length,
                              ),
                            ),
                          ),
                          if (ref
                              .watch(userFavouriteProductProvider.notifier)
                              .canLoadMore())
                            if (!ref
                                .watch(userFavouriteProductProvider)
                                .isLoading)
                              const SliverToBoxAdapter(
                                child: PaginationLoadingIndicator(),
                              )
                        ]);
                },
                loading: () => MyFavoriteShimmer(),
                error: (error, stack) {
                  log(error.toString(), name: "  favourite error");
                  log(stack.toString(), name: "  favourite error");
                  return ErrorPlaceholder(
                    error: "Error fetching items",
                    onTap: () {
                      ref.invalidate(userFavouriteProductProvider);
                    },
                  );
                },
              ),
        ));
  }
}

class StaticSliverDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  StaticSliverDelegate({required this.child});

  @override
  double get minExtent => 78.8;

  @override
  double get maxExtent => 78.8;

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
