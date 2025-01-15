import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/categories_provider.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/model/product/categories/new_categories.dart';
import 'package:prelura_app/views/widgets/SearchWidget.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';

import '../../../res/colors.dart';
import '../../../res/images.dart';
import '../../widgets/menu_card.dart';

@RoutePage()
class NewSubCategoryScreen extends ConsumerStatefulWidget {
  const NewSubCategoryScreen({
    super.key,
    required this.parentId,
    required this.parentName,
  });

  final String parentId;
  final String parentName;

  @override
  ConsumerState<NewSubCategoryScreen> createState() =>
      _SubCategoryScreenState();
}

class _SubCategoryScreenState extends ConsumerState<NewSubCategoryScreen> {
  bool isSearching = false;
  List<Categoriess> filter = [];

  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
      ref.read(categoryNotifierProvider.notifier).fetchCategories(
            context,
            int.parse(widget.parentId),
          );
    });
  }

  void onSearch(String query, List<Categoriess> subCategories) {
    setState(() {
      isSearching = query.isNotEmpty;
      filter = subCategories
          .where((e) => e.name!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  Widget buildCategoryList(List<Categoriess> subCategories) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: subCategories.length,
        itemBuilder: (context, index) {
          final category = subCategories[index];
          final svgPath = PreluraIcons.getConstant(
            keyword: category.name!,
            category: widget.parentName,
          );
          final hasSvg = svgPath?.isNotEmpty ?? false;

          return MenuCard(
            title: category.name!,
            svgPath: hasSvg ? svgPath : null,
            icon: hasSvg
                ? null
                : const Icon(Icons.settings, color: PreluraColors.activeColor),
            trailingIcon: category.hasChildren == true
                ? null
                : const Icon(
                    Icons.radio_button_off,
                    size: 18,
                  ),
            onTap: () {
              if (category.hasChildren ?? false) {
                context.router.push(NewSubCategoryRoute(
                  parentId: category.id!,
                  parentName: category.name!,
                ));
              } else {}
              // ref.read(sellItemProvider.notifier).updateSubCategory(category);
              // Navigator.of(context)
              //   ..pop()
              //   ..pop();
            },
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final categoryState = ref.watch(categoryNotifierProvider);
    final subCategories = categoryState.categoriesLog[widget.parentId] ?? [];

    return Scaffold(
      appBar: PreluraAppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
        centerTitle: true,
        appbarTitle: widget.parentName,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          if (subCategories.length > 1)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Searchwidget(
                padding: EdgeInsets.zero,
                obscureText: false,
                shouldReadOnly: false,
                hintText: "Search Sub Categories",
                enabled: true,
                showInputBorder: true,
                autofocus: false,
                cancelButton: true,
                onChanged: (val) => onSearch(val, subCategories),
              ),
            ),
          const SizedBox(height: 16),
          if (categoryState.isLoading)
            const Center(child: CircularProgressIndicator.adaptive())
          else if (isSearching && filter.isNotEmpty)
            buildCategoryList(filter)
          else if (!isSearching && subCategories.isNotEmpty)
            buildCategoryList(subCategories)
          else
            const Expanded(
                child: Center(child: Text("No Sub Categories Found"))),
        ],
      ),
    );
  }
}

///
///
///
// class NewSubCategoryScreen extends ConsumerStatefulWidget {
//   const NewSubCategoryScreen({
//     super.key,
//     required this.parentId,
//     required this.parentName,
//   });
//   final String parentId;
//   final String parentName;
//
//   @override
//   ConsumerState<NewSubCategoryScreen> createState() =>
//       _SubCategoryScreenState();
// }
//
// class _SubCategoryScreenState extends ConsumerState<NewSubCategoryScreen> {
//   bool isSearching = false;
//   List<CategoryModel> filter = [];
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
//             int.parse(widget.parentId),
//           );
//     });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final CategoriesState categoryState = ref.watch(categoryNotifierProvider);
//     return Scaffold(
//       appBar: PreluraAppBar(
//         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//         leadingIcon: IconButton(
//           icon:
//               Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
//           onPressed: () => context.router.popForced(),
//         ),
//         centerTitle: true,
//         appbarTitle: widget.parentName,
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
//               hintText: "Search Sub Categories",
//               enabled: true,
//               showInputBorder: true,
//               autofocus: false,
//               cancelButton: true,
//               onChanged: (val) {
//                 isSearching = val.isNotEmpty;
//                 // filter = widget.subCategories
//                 //     .where(
//                 //         (e) => e.name.toLowerCase().contains(val.toLowerCase()))
//                 //     .toList();
//                 // setState(() {});
//               },
//             ),
//           ),
//           16.verticalSpacing,
//           if (categoryState.isLoading)
//             Center(
//               child: CircularProgressIndicator.adaptive(),
//             ),
//           if (isSearching) ...[
//             Expanded(
//               child: ListView.builder(
//                   shrinkWrap: true,
//                   // physics: NeverScrollableScrollPhysics(),
//                   itemCount: filter.length,
//                   itemBuilder: (context, index) {
//                     final svgPath = PreluraIcons.getConstant(
//                         keyword: filter[index].name,
//                         category: widget.parentName);
//                     return MenuCard(
//                         title: filter[index].name,
//                         svgPath: svgPath != "" ? svgPath : null,
//                         icon: svgPath == ""
//                             ? const Icon(
//                                 Icons.settings,
//                                 color: PreluraColors.activeColor,
//                               )
//                             : null,
//                         onTap: () {
//                           ref
//                               .read(sellItemProvider.notifier)
//                               .updateSubCategory(filter[index]);
//                           // ref.read(selectedProductCategoryNotifierProvider.notifier).updateData(sharedData.relatedStrings[index]);
//                           // context.router.push(const SubCategoryProductRoute());
//                           Navigator.of(context)
//                             ..pop()
//                             ..pop();
//                         });
//                   }),
//             )
//           ]
//           // else
//           //   Expanded(
//           //     child: ListView.builder(
//           //         shrinkWrap: true,
//           //         itemCount: widget.subCategories.length,
//           //         // physics: NeverScrollableScrollPhysics(),
//           //         itemBuilder: (context, index) {
//           //           final svgPath = PreluraIcons.getConstant(
//           //               keyword: widget.subCategories[index].name,
//           //               category: widget.categoryName);
//           //           return MenuCard(
//           //               title: widget.subCategories[index].name,
//           //               svgPath: svgPath != "" ? svgPath : null,
//           //               icon: svgPath == ""
//           //                   ? const Icon(
//           //                       Icons.settings,
//           //                       color: PreluraColors.activeColor,
//           //                     )
//           //                   : null,
//           //               onTap: () {
//           //                 ref
//           //                     .read(sellItemProvider.notifier)
//           //                     .updateSubCategory(widget.subCategories[index]);
//           //                 Navigator.of(context)
//           //                   ..pop()
//           //                   ..pop();
//           //               });
//           //         }),
//           //   ),
//         ],
//       ),
//     );
//   }
// }
