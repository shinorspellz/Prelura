import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/controller/product/provider/sell_item_provider.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/model/product/categories/category_model.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';

import '../../../res/colors.dart';
import '../../../res/images.dart';
import '../../shimmers/category_shimmer.dart';
import '../../widgets/menu_card.dart';

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
    // final sharedData = ref.watch(selectedCategoryNotifierProvider);
    final wordsToRemove = ["electronics", "home", "entertainment", "pet care"];

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
          // 10.verticalSpacing,
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 15),
          //   child: Searchwidget(
          //     padding: EdgeInsets.zero,
          //     obscureText: false,
          //     shouldReadOnly: false,
          //     hintText: "Search Categories",
          //     enabled: true,
          //     showInputBorder: true,
          //     autofocus: false,
          //     cancelButton: true,
          //     onChanged: (val) {
          //       if (ref.read(categoryProvider).valueOrNull == null) return;
          //       isSearching = val.isNotEmpty;
          //       filter = ref
          //           .read(categoryProvider)
          //           .valueOrNull!
          //           .where(
          //               (e) => e.name.toLowerCase().contains(val.toLowerCase()))
          //           .toList();
          //       setState(() {});
          //     },
          //   ),
          // ),
          if (isSearching) ...[
            Expanded(
              child: ListView.builder(
                itemCount: filter.length,
                itemBuilder: (_, index) {
                  final cat = filter[index];
                  final svgPath = PreluraIcons.getConstant(
                      keyword: cat.name, category: null);

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
                        NewSubCategoryRoute(
                          parentId: cat.id,
                          parentName: cat.name,
                        ),

                        // SubCategoryRoute(
                        //   subCategories: cat.subCategory ?? [],
                        //   categoryName: cat.name,
                        // ),
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
                    data: (data) {
                      final List<CategoryModel> categories;
                      categories = data
                          .where((word) =>
                              !wordsToRemove.contains(word.name.toLowerCase()))
                          .toList();
                      return ListView.builder(
                        itemCount: categories.length,
                        itemBuilder: (_, index) {
                          final cat = categories[index];
                          final svgPath = PreluraIcons.getConstant(
                              keyword: cat.name, category: null);

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
                                NewSubCategoryRoute(
                                  parentId: cat.id,
                                  parentName: cat.name,
                                ),
                                // SubCategoryRoute(
                                //     subCategories: cat.subCategory ?? [],
                                //     categoryName: cat.name),
                              );
                            },
                          );
                        },
                      );
                    },
                    error: (e, _) => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("An error occurred"),
                          TextButton.icon(
                            onPressed: () => ref.invalidate(categoryProvider),
                            label: const Text('Retry'),
                            icon: const Icon(Icons.refresh_rounded),
                          ),
                        ],
                      ),
                    ),
                    loading: () => CategoryShimmer(length: 4),
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
