import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/categories_provider.dart';
import 'package:prelura_app/controller/product/provider/sell_item_provider.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/model/product/categories/category_model.dart';
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
