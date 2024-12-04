import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';

import '../../../widgets/gesture_navigator.dart';
import '../provider/product_list_provider.dart';
import '../provider/sell_item_provider.dart';

@RoutePage()
class ProductListScreen extends ConsumerWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sharedData = ref.watch(selectedProductListNotifierProvider);

    return Scaffold(
      appBar: PreluraAppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.back(),
          ),
          centerTitle: true,
          appbarTitle: sharedData.selectedValue),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: sharedData.relatedStrings.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Text(sharedData.relatedStrings[index]),
                        trailing: Radio<String>(
                          value: sharedData.relatedStrings[index],
                          groupValue: sharedData.selectedValue,
                          onChanged: (value) => {
                            // ref.read(sellItemProvider.notifier).updateCategory(value!),
                            context.router.popUntilRoot(),
                          },
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
