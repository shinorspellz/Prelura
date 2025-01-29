import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/categories_provider.dart';
import 'package:prelura_app/controller/product/provider/sell_item_provider.dart';
// import 'package:prelura_app/controller/product/product_provider.dart';
// import 'package:prelura_app/controller/product/provider/sell_item_provider.dart';
import 'package:prelura_app/core/router/router.gr.dart';
// import 'package:prelura_app/model/product/categories/category_model.dart';
import 'package:prelura_app/model/product/categories/new_categories.dart';
import 'package:prelura_app/res/context_entension.dart';
import 'package:prelura_app/views/widgets/SearchWidget.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/gap.dart';

// import 'package:prelura_app/views/widgets/gap.dart';

import '../../../model/product/categories/category_model.dart';
import '../../../res/colors.dart';
import '../../../res/images.dart';
// import '../../shimmers/category_shimmer.dart';
import '../../../res/utils.dart';
import '../../widgets/app_checkbox.dart';
import '../../widgets/menu_card.dart';

final selectedParentCategory = StateProvider<String?>((ref) => null);

@RoutePage()
class NewCategoryScreen extends ConsumerStatefulWidget {
  const NewCategoryScreen({super.key});

  @override
  ConsumerState<NewCategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends ConsumerState<NewCategoryScreen> {
  bool isSearching = false;
  List<Categoriess> filter = [];
  List<Categoriess> actualList = [];

  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
      ref
          .read(categoryNotifierProvider.notifier)
          .fetchCategories(context, null);
    });
  }

  void onSearch(String query, List<Categoriess> allCategories) {
    setState(() {
      isSearching = query.isNotEmpty;
      filter = allCategories
          .where((e) => e.name!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  Widget buildCategoryList(List<Categoriess> categories) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: categories.length,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) {
        final cat = categories[index];
        final svgPath =
            PreluraIcons.getConstant(keyword: cat.name!, category: null);
        final hasSvg = svgPath?.isNotEmpty ?? false;

        return cat.hasChildren == false
            ? PreluraCheckBox(
                title: cat.name!,
                isChecked: false,
                onChanged: (value) {
                  if (cat.hasChildren ?? false) {
                    context.router.push(NewSubCategoryRoute(
                      parentId: cat.id!,
                      parentName: cat.name!,
                    ));
                  } else {}
                },
              )
            : MenuCard(
                title: cat.name!,
                svgPath: hasSvg ? svgPath : null,
                icon: hasSvg
                    ? null
                    : const Icon(Icons.settings,
                        color: PreluraColors.activeColor),
                onTap: () {
                  if (cat.hasChildren ?? false) {
                    context.router.push(NewSubCategoryRoute(
                      parentId: cat.id!,
                      parentName: cat.name!,
                    ));
                  } else {}
                });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final categoryState = ref.watch(categoryNotifierProvider);
    final state = ref.watch(sellItemProvider);

    actualList = categoryState.categoriesLog["10000"] ?? [];

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
          // const SizedBox(height: 10),
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
          //     onChanged: (val) => onSearch(val, actualList),
          //   ),
          // ),
          if (categoryState.isLoading)
            const Center(child: CircularProgressIndicator.adaptive()),
          if (isSearching && filter.isNotEmpty) ...[
            buildCategoryList(filter),
          ] else if (!isSearching && actualList.isNotEmpty) ...[
            buildCategoryList(actualList),
            22.verticalSpacing,
            if (state.category != null)
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                    height: 50,
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: PreluraColors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    child: GestureDetector(
                      onTap: () {
                        final selectedCategory =
                            ref.read(categoryNotifierProvider).selectedCategory;
                        context.router.push(NewSubCategoryRoute(
                          parentId: selectedCategory!.parent!.id!,
                          parentName: selectedCategory.name!,
                        ));
                      },
                      child: Row(
                        children: [
                          Text("Selected:",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      fontSize: getDefaultSize(),
                                      fontWeight: FontWeight.w600,
                                      color: context.isDarkMode
                                          ? PreluraColors.white
                                          : PreluraColors.black)),
                          12.horizontalSpacing,
                          Text(
                              state.category?.name != null
                                  ? "${ref.read(selectedParentCategory)} >" ??
                                      ""
                                  : "",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      fontSize: getDefaultSize(),
                                      fontWeight: FontWeight.w500,
                                      color: PreluraColors.grey)),
                          Spacer(),
                          Text(state.category?.name ?? "",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      fontSize: getDefaultSize(),
                                      fontWeight: FontWeight.w600,
                                      color: PreluraColors.primaryColor)),
                        ],
                      ),
                    )),
              ),
            // Spacer()
          ] else if (!categoryState.isLoading)
            const Expanded(child: Center(child: Text("No Categories Found"))),
        ],
      ),
    );
  }
}

///
///
///
// class NewCategoryScreen extends ConsumerStatefulWidget {
//   const NewCategoryScreen({super.key});
//
//   @override
//   ConsumerState<NewCategoryScreen> createState() => _CategoryScreenState();
// }
//
// class _CategoryScreenState extends ConsumerState<NewCategoryScreen> {
//   bool isSearching = false;
//   List<Categoriess> filter = [];
//   List<Categoriess> actualList = [];
//
//   @override
//   void initState() {
//     WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
//       ref
//           .read(
//             categoryNotifierProvider.notifier,
//           )
//           .fetchCategories(
//             context,
//             null,
//           );
//     });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final CategoriesState categoryState = ref.watch(categoryNotifierProvider);
//     actualList = categoryState.categoriesLog["10000"] ?? [];
//     log("::::The actualList Length is :::: ${actualList.length}");
//     return Scaffold(
//       appBar: PreluraAppBar(
//         leadingIcon: IconButton(
//           icon:
//               Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
//           onPressed: () => context.router.popForced(),
//         ),
//         centerTitle: true,
//         appbarTitle: "Category",
//       ),
//       body: Column(
//         children: [
//           10.verticalSpacing,
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//             child: Searchwidget(
//               padding: EdgeInsets.zero,
//               obscureText: false,
//               shouldReadOnly: false,
//               hintText: "Search Categories",
//               enabled: true,
//               showInputBorder: true,
//               autofocus: false,
//               cancelButton: true,
//               onChanged: (val) {
//                 // if (ref.read(categoryProvider).valueOrNull == null) return;
//                 // isSearching = val.isNotEmpty;
//                 // filter = ref
//                 //     .read(categoryProvider)
//                 //     .valueOrNull!
//                 //     .where(
//                 //         (e) => e.name.toLowerCase().contains(val.toLowerCase()))
//                 //     .toList();
//                 // setState(() {});
//               },
//             ),
//           ),
//           if (categoryState.isLoading)
//             Center(
//               child: CircularProgressIndicator.adaptive(),
//             ),
//           if (isSearching) ...[
//             Expanded(
//               child: ListView.builder(
//                 itemCount: filter.length,
//                 itemBuilder: (_, index) {
//                   final cat = filter[index];
//                   final svgPath = PreluraIcons.getConstant(
//                       keyword: cat.name!, category: null);
//
//                   return MenuCard(
//                     title: cat.name!,
//                     svgPath: svgPath != "" ? svgPath : null,
//                     icon: svgPath == ""
//                         ? const Icon(
//                             Icons.settings,
//                             color: PreluraColors.activeColor,
//                           )
//                         : null,
//                     trailingIcon: (cat.hasChildren ?? false)
//                         ? null
//                         : Icon(
//                             Icons.radio_button_off,
//                           ),
//                     onTap: () {
//                       // ref.read(sellItemProvider.notifier).updateCategory(cat);
//                       return context.router.push(
//                         NewSubCategoryRoute(
//                           parentId: cat.id!,
//                           parentName: cat.name!,
//                         ),
//                       );
//                     },
//                   );
//                 },
//               ),
//             )
//           ] else if (actualList.isNotEmpty)
//             Expanded(
//               child: ListView.builder(
//                 itemCount: actualList.length,
//                 itemBuilder: (_, index) {
//                   final cat = actualList[index];
//                   final svgPath = PreluraIcons.getConstant(
//                       keyword: cat.name!, category: null);
//                   bool haveSvg = (svgPath != null && svgPath != "");
//                   return MenuCard(
//                     title: cat.name!,
//                     svgPath: haveSvg ? svgPath : null,
//                     trailingIcon: (cat.hasChildren ?? false)
//                         ? null
//                         : Icon(
//                             Icons.radio_button_off,
//                           ),
//                     icon: !haveSvg
//                         ? const Icon(
//                             Icons.settings,
//                             color: PreluraColors.activeColor,
//                           )
//                         : null,
//                     onTap: () {
//                       // ref.read(sellItemProvider.notifier).updateCategory(cat);
//                       return context.router.push(
//                         NewSubCategoryRoute(
//                           parentId: cat.id!,
//                           parentName: cat.name!,
//                         ),
//                       );
//                     },
//                   );
//                 },
//               ),
//             ),
//
//           //   else
//           //     Expanded(
//           //       child: ref.watch(categoryProvider).when(
//           //             skipLoadingOnRefresh: false,
//           //             data: (data) {
//           //               final List<CategoryModel> categories;
//           //               categories = data
//           //                   .where((word) =>
//           //                       !wordsToRemove.contains(word.name.toLowerCase()))
//           //                   .toList();
//           //               return ListView.builder(
//           //                 itemCount: categories.length,
//           //                 itemBuilder: (_, index) {
//           //                   final cat = categories[index];
//           //                   final svgPath = PreluraIcons.getConstant(
//           //                       keyword: cat.name, category: null);
//           //
//           //                   return MenuCard(
//           //                     title: cat.name,
//           //                     svgPath: svgPath != "" ? svgPath : null,
//           //                     icon: svgPath == ""
//           //                         ? const Icon(
//           //                             Icons.settings,
//           //                             color: PreluraColors.activeColor,
//           //                           )
//           //                         : null,
//           //                     onTap: () {
//           //                       ref
//           //                           .read(sellItemProvider.notifier)
//           //                           .updateCategory(cat);
//           //                       return context.router.push(
//           //                         NewSubCategoryRoute(
//           //                           parentId: cat.id,
//           //                           parentName: cat.name,
//           //                         ),
//           //                         // SubCategoryRoute(
//           //                         //     subCategories: cat.subCategory ?? [],
//           //                         //     categoryName: cat.name),
//           //                       );
//           //                     },
//           //                   );
//           //                 },
//           //               );
//           //             },
//           //             error: (e, _) => Center(
//           //               child: Column(
//           //                 mainAxisAlignment: MainAxisAlignment.center,
//           //                 mainAxisSize: MainAxisSize.min,
//           //                 children: [
//           //                   Text(e.toString()),
//           //                   TextButton.icon(
//           //                     onPressed: () => ref.invalidate(categoryProvider),
//           //                     label: const Text('Retry'),
//           //                     icon: const Icon(Icons.refresh_rounded),
//           //                   ),
//           //                 ],
//           //               ),
//           //             ),
//           //             loading: () => CategoryShimmer(length: 4),
//           //           ),
//           //     ),
//         ],
//       ),
//     );
//   }
// }
