import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/product_list_provider.dart';
import '../provider/sell_item_provider.dart';

@RoutePage()
class ProductListScreen extends ConsumerWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sharedData = ref.watch(selectedProductListNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        automaticallyImplyLeading: true,
        title: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                  child: Text(sharedData.selectedValue,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 18,
                          )))
            ],
          ),
        ),
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
                  return ListTile(
                    title: Text(sharedData.relatedStrings[index]),
                    trailing: Radio<String>(
                        value: sharedData.relatedStrings[index],
                        groupValue: sharedData.selectedValue,
                        onChanged: (value) => {
                              ref
                                  .read(sellItemProvider.notifier)
                                  .updateProduct(value!),
                              context.router.popUntilRoot()
                            }),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
