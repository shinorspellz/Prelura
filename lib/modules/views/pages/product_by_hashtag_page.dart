import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';
import 'package:prelura_app/modules/views/pages/Sell%20Item/view/brand_view.dart';

import 'package:prelura_app/modules/views/shimmers/grid_shimmer.dart';
import 'package:prelura_app/modules/views/widgets/SearchWidget.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/card.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';

@RoutePage()
class ProductByHashtagPage extends ConsumerStatefulWidget {
  const ProductByHashtagPage({super.key, required this.hashtag});
  final String hashtag;

  @override
  ConsumerState<ProductByHashtagPage> createState() => _ProductByHashtagPageState();
}

class _ProductByHashtagPageState extends ConsumerState<ProductByHashtagPage> {
  final controller = ScrollController();

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      if (!mounted) return; // Guard against unmounted state
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        // if (ref.read(paginatingHome)) return;
        ref.read(filteredProductProvider((Input$ProductFiltersInput(hashtags: [widget.hashtag]), searchQuery)).notifier).fetchMoreData();
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
        appbarTitle: widget.hashtag,
        leadingIcon: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back)),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.refresh(filteredProductProvider((Input$ProductFiltersInput(hashtags: [widget.hashtag]), searchQuery)).future);
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
                    padding: const EdgeInsets.only(top: 16, left: 15, right: 15),
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
                        12.verticalSpacing,
                      ],
                    ),
                  )),
                ),
                ref.watch(filteredProductProvider((Input$ProductFiltersInput(hashtags: [widget.hashtag]), searchQuery))).maybeWhen(
                      // skipLoadingOnRefresh: !ref.watch(refreshingHome),
                      data: (products) => SliverPadding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        sliver: SliverGrid.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.50,
                          ),
                          itemCount: products.take(6).length,
                          itemBuilder: (context, index) {
                            return ProductCard(product: products.take(6).toList()[index]);
                          },
                        ),
                      ),
                      orElse: () => SliverToBoxAdapter(child: Container()),
                    ),
                SliverPadding(
                  padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                  sliver: ref.watch(filteredProductProvider((Input$ProductFiltersInput(hashtags: [widget.hashtag]), searchQuery))).when(
                      data: (products) {
                        if (products.length < 6) return SliverToBoxAdapter(child: Container());
                        final clippedProducts = products.sublist(6);
                        return SliverGrid.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                if (ref.watch(filteredProductProvider((Input$ProductFiltersInput(hashtags: [widget.hashtag]), searchQuery)).notifier).canLoadMore())
                  if (!ref.watch(filteredProductProvider((Input$ProductFiltersInput(hashtags: [widget.hashtag]), searchQuery))).isLoading)
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
