import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/categories_provider.dart';
import 'package:prelura_app/controller/product/provider/sell_item_provider.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/model/product/categories/category_model.dart';
import 'package:prelura_app/model/product/categories/new_categories.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_checkbox.dart';
import 'package:prelura_app/views/widgets/loading_widget.dart';

import '../../../res/images.dart';
import '../../widgets/menu_card.dart';
import 'new_category_view.dart';

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

          return category.hasChildren == false
              ? PreluraCheckBox(
                  isChecked: ref.watch(sellItemProvider).category?.name ==
                      category.name,
                  onChanged: (value) {
                    if (category.hasChildren ?? false) {
                      context.router.push(NewSubCategoryRoute(
                        parentId: category.id!,
                        parentName: category.name!,
                      ));
                    } else {
                      ref
                          .read(
                        categoryNotifierProvider.notifier,
                      )
                          .updateState({"selectedCategory": category});
                      ref
                          .read(
                            categoryNotifierProvider.notifier,
                          )
                          .fetchSizes();
                      ref.read(selectedParentCategory.notifier).state = ref
                          .read(categoryNotifierProvider)
                          .selectedCategory
                          ?.fullPath!
                          .split(">")
                          .first;
                      ref
                          .read(sellItemProvider.notifier)
                          .updateCategory(CategoryModel(
                            id: category.id,
                            name: category.name!,
                          ));
                      context.router.popUntilRouteWithName(
                        SellItemRoute.name,
                      );
                    }
                  },
                  title: category.name!)
              : MenuCard(
                  title: category.name!,
                  onTap: () {
                    if (category.hasChildren ?? false) {
                      context.router.push(NewSubCategoryRoute(
                        parentId: category.id!,
                        parentName: category.name!,
                      ));
                    } else {
                      ref
                          .read(
                        categoryNotifierProvider.notifier,
                      )
                          .updateState({"selectedCategory": category});
                      ref
                          .read(
                            categoryNotifierProvider.notifier,
                          )
                          .fetchSizes();
                      ref
                          .read(sellItemProvider.notifier)
                          .updateCategory(CategoryModel(
                            id: category.id,
                            name: category.name!,
                          ));
                      context.router.popUntilRouteWithName(
                        SellItemRoute.name,
                      );
                    }
                  },
                );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const order = ["Clothing", "Accessories", "Shoes"];
    final categoryState = ref.watch(categoryNotifierProvider);
    final subCategories = categoryState.categoriesLog[widget.parentId] ?? [];

    final sortedCategories = List.of(subCategories)
      ..sort((a, b) =>
          order.indexOf(a.name ?? "").compareTo(order.indexOf(b.name ?? "")));

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
          if (categoryState.isLoading)
            const Center(child: LoadingWidget())
          else if (isSearching && filter.isNotEmpty)
            buildCategoryList(filter)
          else if (!isSearching && subCategories.isNotEmpty)
            buildCategoryList(sortedCategories)
          else
            const Expanded(
                child: Center(child: Text("No Sub Categories Found"))),
        ],
      ),
    );
  }
}
