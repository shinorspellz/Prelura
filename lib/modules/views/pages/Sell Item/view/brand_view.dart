import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/modules/controller/product/brands_provider.dart';
import 'package:prelura_app/modules/model/product/product.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/app_checkbox.dart';
import 'package:prelura_app/modules/views/widgets/app_radio.dart';
import 'package:prelura_app/modules/views/widgets/bottom_sheet.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/ui_constants.dart';

import '../../../shimmers/grid_menu_card_shimmer.dart';
import '../../../widgets/SearchWidget.dart';
import '../provider/brand_provider.dart';
import '../provider/sell_item_provider.dart';

@RoutePage()
class BrandSelectionPage extends ConsumerStatefulWidget {
  const BrandSelectionPage({super.key});

  @override
  ConsumerState<BrandSelectionPage> createState() => _BrandSelectionPageState();
}

class _BrandSelectionPageState extends ConsumerState<BrandSelectionPage> {
  final controller = ScrollController();

  @override
  void initState() {
    controller.addListener(() {
      // setState(() => autoScroll = false);
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      final delta = MediaQuery.sizeOf(context).height * 0.2;
      if (maxScroll - currentScroll <= delta) {
        if (ref.read(brandsProvider).isLoading) return;
        if (searchQuery.isNotEmpty) return;
        ref.read(brandsProvider.notifier).fetchMoreData();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final selectedBrand = ref.watch(sellItemProvider).brand;

    return Scaffold(
      appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.popForced(),
          ),
          centerTitle: true,
          appbarTitle: "Brand"),
      body: ref.watch(brandsProvider).when(
            data: (brands) => CustomScrollView(
              controller: controller,
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Searchwidget(
                      hintText: "Find a brand",
                      obscureText: false,
                      shouldReadOnly: false,
                      enabled: true,
                      showInputBorder: true,
                      autofocus: false,
                      cancelButton: true,
                      onChanged: (val) {
                        searchQuery = val;
                        setState(() {});
                      },
                    ),
                  ),
                ),
                if (searchQuery.isNotEmpty) ...[
                  ref.watch(searchBrand(searchQuery)).when(
                        data: (brands) {
                          if (brands.isEmpty) {
                            return SliverToBoxAdapter(
                              child: PreluraCheckBox(
                                title: "Create '$searchQuery' Brand",
                                titleWidget: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        style: context.textTheme.bodyLarge?.copyWith(
                                          color: PreluraColors.activeColor,
                                        ),
                                        children: [
                                          TextSpan(text: 'Create '),
                                          TextSpan(text: ' "$searchQuery" '),
                                          TextSpan(text: 'Brand'),
                                        ])),
                                isChecked: ref.watch(sellItemProvider).customBrand == searchQuery,
                                onChanged: (value) {
                                  ref.read(sellItemProvider.notifier).selectCustomBrand(searchQuery);
                                  context.back();
                                },
                              ),
                            );
                          }

                          // WidgetsBinding.instance.addPostFrameCallback((_) {
                          //   if (brands.isEmpty) {
                          //     showDialog(
                          //       context: context,
                          //       builder: (context) => AlertDialog.adaptive(
                          //         title: Text('Custom Brand'),
                          // content: RichText(
                          //     textAlign: TextAlign.center,
                          //     text: TextSpan(children: [
                          //       TextSpan(text: 'Would you like to create a brand '),
                          //       TextSpan(
                          //           text: searchQuery,
                          //           style: context.textTheme.bodyLarge?.copyWith(
                          //             color: PreluraColors.activeColor,
                          //           )),
                          //       TextSpan(text: ' as a custom brand for your product'),
                          //     ])),
                          //         actions: [
                          //           TextButton(onPressed: () {}, child: Text('Add')),
                          //           TextButton(onPressed: () => Navigator.pop(context), child: Text('Dismiss')),
                          //         ],
                          //       ),
                          //     );
                          //   }
                          // });
                          return SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                                return PreluraCheckBox(
                                  title: brands[index].name,
                                  isChecked: brands[index].name == selectedBrand?.name,
                                  onChanged: (value) {
                                    ref.read(sellItemProvider.notifier).selectBrand(brands[index]);
                                    context.back();
                                  },
                                );
                              },
                              childCount: brands.length, // Number of items in the list
                            ),
                          );
                        },
                        error: (e, _) => SliverToBoxAdapter(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(e.toString()),
                                TextButton.icon(
                                  onPressed: () => ref.invalidate(brandsProvider),
                                  label: const Text('Retry'),
                                  icon: const Icon(Icons.refresh_rounded),
                                ),
                              ],
                            ),
                          ),
                        ),
                        loading: () => SliverToBoxAdapter(
                          child: GridMenuCardShimmer(),
                        ),
                      ),
                ] else
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return PreluraCheckBox(
                          title: brands[index].name,
                          isChecked: brands[index].name == selectedBrand?.name,
                          onChanged: (value) {
                            ref.read(sellItemProvider.notifier).selectBrand(brands[index]);
                            context.back();
                          },
                        );
                      },
                      childCount: brands.length, // Number of items in the list
                    ),
                  ),
                if (ref.watch(brandsProvider.notifier).canLoadMore())
                  if (searchQuery.isEmpty)
                    const SliverToBoxAdapter(
                      child: PaginationLoadingIndicator(),
                    )
              ],
            ),
            error: (e, _) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(e.toString()),
                  TextButton.icon(
                    onPressed: () => ref.invalidate(brandsProvider),
                    label: const Text('Retry'),
                    icon: const Icon(Icons.refresh_rounded),
                  ),
                ],
              ),
            ),
            loading: () => GridMenuCardShimmer(),
          ),
    );
  }
}

class PaginationLoadingIndicator extends StatelessWidget {
  const PaginationLoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 25,
            width: 25,
            child: LoadingWidget(),
          ),
          10.horizontalSpacing,
          const Text('Loading more...')
        ],
      ),
    );
  }
}
