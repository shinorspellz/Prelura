import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/model/product/categories/category_model.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';
import 'package:prelura_app/modules/views/pages/Sell%20Item/provider/sell_item_provider.dart';
import 'package:prelura_app/modules/views/pages/Sell%20Item/provider/shared_notifier.dart';
import 'package:prelura_app/modules/views/pages/Sell%20Item/provider/sub_category_provider.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';

import '../../../../../res/colors.dart';
import '../../../widgets/gesture_navigator.dart';
import '../../../widgets/menu_card.dart';
import '../provider/product_sub_category_provider.dart';

@RoutePage()
class SubCategoryScreen extends ConsumerWidget {
  const SubCategoryScreen({super.key, required this.subCategories});
  final List<CategoryModel> subCategories;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sharedData = ref.watch(selectedCategoryNotifierProvider);

    return Scaffold(
      appBar: PreluraAppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leadingIcon: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
        centerTitle: true,
        appbarTitle: sharedData.selectedValue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: subCategories.length,
                itemBuilder: (context, index) {
                  return MenuCard(
                      title: subCategories[index].name,
                      icon: const Icon(
                        Icons.settings,
                        color: PreluraColors.activeColor,
                      ),
                      onTap: () {
                        ref.read(sellItemProvider.notifier).updateSubCategory(subCategories[index]);
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
