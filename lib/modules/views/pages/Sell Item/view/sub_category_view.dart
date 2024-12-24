import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/model/product/categories/category_model.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';
import 'package:prelura_app/modules/views/pages/Sell%20Item/provider/sell_item_provider.dart';
import 'package:prelura_app/modules/views/pages/Sell%20Item/provider/shared_notifier.dart';
import 'package:prelura_app/modules/views/pages/Sell%20Item/provider/sub_category_provider.dart';
import 'package:prelura_app/modules/views/widgets/SearchWidget.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';

import '../../../../../res/colors.dart';
import '../../../../../res/images.dart';
import '../../../widgets/gesture_navigator.dart';
import '../../../widgets/menu_card.dart';
import '../provider/product_sub_category_provider.dart';

@RoutePage()
class SubCategoryScreen extends ConsumerStatefulWidget {
  const SubCategoryScreen(
      {super.key, required this.subCategories, required this.categoryName});
  final List<CategoryModel> subCategories;
  final String categoryName;

  @override
  ConsumerState<SubCategoryScreen> createState() => _SubCategoryScreenState();
}

class _SubCategoryScreenState extends ConsumerState<SubCategoryScreen> {
  bool isSearching = false;
  List<CategoryModel> filter = [];

  @override
  Widget build(BuildContext context) {
    final sharedData = ref.watch(selectedCategoryNotifierProvider);

    return Scaffold(
      appBar: PreluraAppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
        centerTitle: true,
        appbarTitle: widget.categoryName,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            10.verticalSpacing,
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
                onChanged: (val) {
                  isSearching = val.isNotEmpty;
                  filter = widget.subCategories
                      .where((e) =>
                          e.name.toLowerCase().contains(val.toLowerCase()))
                      .toList();
                  setState(() {});
                },
              ),
            ),
            if (isSearching) ...[
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: filter.length,
                  itemBuilder: (context, index) {
                    final svgPath = PreluraIcons.getConstant(keyword: 
                        filter[index].name, category:  widget.categoryName);
                    return MenuCard(
                        title: filter[index].name,
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
                              .updateSubCategory(filter[index]);
                          // ref.read(selectedProductCategoryNotifierProvider.notifier).updateData(sharedData.relatedStrings[index]);
                          // context.router.push(const SubCategoryProductRoute());
                          Navigator.of(context)
                            ..pop()
                            ..pop();
                        });
                  })
            ] else
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.subCategories.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final svgPath = PreluraIcons.getConstant(
                       keyword: widget.subCategories[index].name, category:  widget.categoryName);
                    return MenuCard(
                        title: widget.subCategories[index].name,
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
                              .updateSubCategory(widget.subCategories[index]);
                          // ref.read(selectedProductCategoryNotifierProvider.notifier).updateData(sharedData.relatedStrings[index]);
                          // context.router.push(const SubCategoryProductRoute());
                          Navigator.of(context)
                            ..pop()
                            ..pop();
                        });
                  }),
          ],
        ),
      ),
    );
  }
}
