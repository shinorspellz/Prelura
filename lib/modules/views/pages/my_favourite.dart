import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/card.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';
import 'package:prelura_app/shared/mock_data.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

import '../../controller/product/product_provider.dart';
import '../shimmers/my_favorite_shimmer.dart';
import '../widgets/SearchWidget.dart';
import '../widgets/gap.dart';

@RoutePage()
class MyFavouriteScreen extends ConsumerStatefulWidget {
  const MyFavouriteScreen({super.key});

  @override
  _MyFavouriteScreenState createState() => _MyFavouriteScreenState();
}

class _MyFavouriteScreenState extends ConsumerState<MyFavouriteScreen> {
  final RefreshController _refreshController = RefreshController();
  bool isSearching = false;
  List<Product> filter = [];
  // This function refreshes data from the provider
  Future<void> _onRefresh() async {
    try {
      await ref.refresh(userFavouriteProduct.future); // Re-trigger the provider
      _refreshController.refreshCompleted(); // Notify SmartRefresher of success
    } catch (e) {
      _refreshController.refreshFailed(); // Notify SmartRefresher of failure
    }
  }

  void _onLoading() async {
    try {
      // Fetch more products from the repository
      await ref.refresh(userFavouriteProduct.future); // Re-trigger the provider

      // await ref.read(productRepo).fetchMoreFavouriteProducts();
      _refreshController.loadComplete();
    } catch (e) {
      _refreshController.loadFailed();
    }
  }

  @override
  Widget build(BuildContext context) {
    final asyncFavouriteProducts = ref.watch(userFavouriteProduct);

    print("asyncFavouriteProducts: $asyncFavouriteProducts");
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
        body: SmartRefresher(
          controller: _refreshController,
          onRefresh: _onRefresh,
          onLoading: _onLoading,
          enablePullDown: true,
          enablePullUp: asyncFavouriteProducts.value != null
              ? asyncFavouriteProducts.value!.isNotEmpty
                  ? true
                  : false
              : false,
          child: asyncFavouriteProducts.when(
            data: (products) {
              return products.isEmpty
                  ? SizedBox(
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: const Center(child: Text('No Favourite Items')))
                  : CustomScrollView(slivers: [
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
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                obscureText: false,
                                shouldReadOnly: false,
                                hintText: "Search for products",
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
                            childAspectRatio: 0.572,
                          ),
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              return ProductCard(
                                product: isSearching
                                    ? filter[index]
                                    : products[index],
                                isSimilar: false,
                              );
                            },
                            childCount:
                                isSearching ? filter.length : products.length,
                          ),
                        ),
                      ),
                    ]);
            },
            loading: () => MyFavoriteShimmer(),
            error: (error, stack) => Center(child: Text('Error: $error')),
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
