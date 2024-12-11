import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';
import 'package:prelura_app/modules/model/product/categories/category_model.dart';
import 'package:prelura_app/modules/views/pages/Sell%20Item/provider/sell_item_provider.dart';
import 'package:prelura_app/modules/views/pages/Sell%20Item/provider/sub_category_provider.dart';
import 'package:prelura_app/modules/views/widgets/SearchWidget.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';

import '../../../../../res/colors.dart';
import '../../../../../res/images.dart';
import '../../../shimmers/grid_menu_card_shimmer.dart';
import '../../../widgets/gesture_navigator.dart';
import '../../../widgets/menu_card.dart';

@RoutePage()
class CategoryScreen extends ConsumerStatefulWidget {
  const CategoryScreen({super.key});

  @override
  ConsumerState<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends ConsumerState<CategoryScreen> {
  bool isSearching = false;
  List<CategoryModel> filter = [];

  @override
  Widget build(BuildContext context) {
    final sharedData = ref.watch(selectedCategoryNotifierProvider);

    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
        centerTitle: true,
        appbarTitle: "Category",
      ),

      body: Column(
        children: [
          10.verticalSpacing,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Searchwidget(
              padding: EdgeInsets.zero,
              obscureText: false,
              shouldReadOnly: false,
              hintText: "Search Categories",
              enabled: true,
              showInputBorder: true,
              autofocus: false,
              cancelButton: true,
              onChanged: (val) {
                if (ref.read(categoryProvider).valueOrNull == null) return;
                isSearching = val.isNotEmpty;
                filter = ref
                    .read(categoryProvider)
                    .valueOrNull!
                    .where(
                        (e) => e.name.toLowerCase().contains(val.toLowerCase()))
                    .toList();
                setState(() {});
              },
            ),
          ),
          if (isSearching) ...[
            Expanded(
              child: ListView.builder(
                itemCount: filter.length,
                itemBuilder: (_, index) {
                  final cat = filter[index];
                  final svgPath = PreluraIcons.getConstant(cat.name);

                  return MenuCard(
                    title: cat.name,
                    svgPath: svgPath != "" ? svgPath : null,
                    icon: svgPath == ""
                        ? const Icon(
                            Icons.settings,
                            color: PreluraColors.activeColor,
                          )
                        : null,
                    onTap: () {
                      ref.read(sellItemProvider.notifier).updateCategory(cat);
                      return context.router.push(
                        SubCategoryRoute(
                            subCategories: cat.subCategory ?? [],
                            categoryName: cat.name),
                      );
                    },
                  );
                },
              ),
            )
          ] else
            Expanded(
              child: ref.watch(categoryProvider).when(
                    skipLoadingOnRefresh: false,
                    data: (data) => ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (_, index) {
                        final cat = data[index];
                        final svgPath = PreluraIcons.getConstant(cat.name);

                        return MenuCard(
                          title: cat.name,
                          svgPath: svgPath != "" ? svgPath : null,
                          icon: svgPath == ""
                              ? const Icon(
                                  Icons.settings,
                                  color: PreluraColors.activeColor,
                                )
                              : null,
                          onTap: () {
                            ref
                                .read(sellItemProvider.notifier)
                                .updateCategory(cat);
                            return context.router.push(
                              SubCategoryRoute(
                                  subCategories: cat.subCategory ?? [],
                                  categoryName: cat.name),
                            );
                          },
                        );
                      },
                    ),
                    error: (e, _) => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(e.toString()),
                          TextButton.icon(
                            onPressed: () => ref.invalidate(categoryProvider),
                            label: const Text('Retry'),
                            icon: const Icon(Icons.refresh_rounded),
                          ),
                        ],
                      ),
                    ),
                    loading: () => GridMenuCardShimmer(length: 8),
                  ),
            ),
        ],
      ),
      // SingleChildScrollView(
      //   padding: const EdgeInsets.only(top: 20),
      //   child: Column(
      //     children: [
      //       MenuCard(
      //           title: "Women",
      //           icon: const Icon(
      //             Icons.settings,
      //             color: PreluraColors.activeColor,
      //           ),
      //           onTap: () {
      //             ref.read(selectedCategoryNotifierProvider.notifier).updateData('Women');
      //             context.router.push(const SubCategoryRoute());
      //           }),
      //       MenuCard(
      //           title: "Men",
      //           icon: const Icon(
      //             Icons.lock,
      //             color: PreluraColors.activeColor,
      //           ),
      //           onTap: () {
      //             ref.read(selectedCategoryNotifierProvider.notifier).updateData('Men');
      //             context.router.push(const SubCategoryRoute());
      //           }),
      //       MenuCard(
      //           title: "kids",
      //           icon: const Icon(
      //             Icons.info_outlined,
      //             color: PreluraColors.activeColor,
      //           ),
      //           onTap: () {
      //             ref.read(selectedCategoryNotifierProvider.notifier).updateData('Kids');
      //             context.router.push(const SubCategoryRoute());
      //           }),
      //       MenuCard(
      //           title: "Home",
      //           icon: const Icon(
      //             Icons.info_outlined,
      //             color: PreluraColors.activeColor,
      //           ),
      //           onTap: () {
      //             ref.read(selectedCategoryNotifierProvider.notifier).updateData('Home');
      //             context.router.push(const SubCategoryRoute());
      //           }),
      //       MenuCard(
      //           title: "Electronics",
      //           icon: const Icon(
      //             Icons.power_input,
      //             color: PreluraColors.activeColor,
      //           ),
      //           onTap: () {
      //             ref.read(selectedCategoryNotifierProvider.notifier).updateData('Electronics');
      //             context.router.push(const SubCategoryRoute());
      //           }),
      //       MenuCard(
      //           title: "Entertainment",
      //           icon: const Icon(
      //             Icons.face,
      //             color: PreluraColors.activeColor,
      //           ),
      //           onTap: () {
      //             ref.read(selectedCategoryNotifierProvider.notifier).updateData('Entertainment');
      //             context.router.push(const SubCategoryRoute());
      //           }),
      //       MenuCard(
      //           title: "Pet care",
      //           icon: const Icon(
      //             CupertinoIcons.paw,
      //             color: PreluraColors.activeColor,
      //           ),
      //           onTap: () {
      //             ref.read(selectedCategoryNotifierProvider.notifier).updateData('Pet Care');
      //             context.router.push(const SubCategoryRoute());
      //           }),
      //     ],
      //   ),
      // ),
    );
  }
}
