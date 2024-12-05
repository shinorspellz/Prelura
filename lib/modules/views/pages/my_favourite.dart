import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/card.dart';
import 'package:prelura_app/shared/mock_data.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../controller/product/product_provider.dart';

@RoutePage()
class MyFavouriteScreen extends ConsumerStatefulWidget {
  const MyFavouriteScreen({Key? key}) : super(key: key);

  @override
  _MyFavouriteScreenState createState() => _MyFavouriteScreenState();
}

class _MyFavouriteScreenState extends ConsumerState<MyFavouriteScreen> {
  final RefreshController _refreshController = RefreshController();

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
          enablePullUp: true,
          child: asyncFavouriteProducts.when(
            data: (products) {
              return GridView.builder(
                  padding: const EdgeInsets.all(10),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.58),
                  itemCount: mockData.length,
                  itemBuilder: (context, index) {
                    return DisplayCard(itemData: mockData[index]);
                  });
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text('Error: $error')),
          ),
        ));
  }
}
