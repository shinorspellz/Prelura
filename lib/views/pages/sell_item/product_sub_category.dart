import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';

import '../../../res/colors.dart';
import '../../widgets/menu_card.dart';
import '../../../controller/product/provider/product_list_provider.dart';
import '../../../controller/product/provider/product_sub_category_provider.dart';

@RoutePage()
class SubCategoryProductScreen extends ConsumerWidget {
  const SubCategoryProductScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sharedData = ref.watch(selectedProductCategoryNotifierProvider);

    return Scaffold(
      appBar: PreluraAppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
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
                itemCount: sharedData.relatedStrings.length,
                itemBuilder: (context, index) {
                  return MenuCard(
                      title: sharedData.relatedStrings[index],
                      icon: const Icon(
                        Icons.settings,
                        color: PreluraColors.activeColor,
                      ),
                      onTap: () {
                        ref
                            .read(selectedProductListNotifierProvider.notifier)
                            .updateData(sharedData.relatedStrings[index]);
                        context.router.push(const ProductListRoute());
                      });
                }),
          ],
        ),
      ),
    );
  }
}
