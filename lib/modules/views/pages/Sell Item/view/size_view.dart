import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:sizer/sizer.dart';

import '../../../../../res/colors.dart';
import '../../../widgets/gesture_navigator.dart';
import '../provider/brand_provider.dart';
import '../provider/sell_item_provider.dart';

@RoutePage()
class SizeSelectionPage extends ConsumerWidget {
  const SizeSelectionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSize = ref.watch(selectedSizeProvider);

    return Scaffold(
      appBar: PreluraAppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        appbarTitle: "Sizes",
        leadingIcon: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Select a size\nMatch the size to the item’s label.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "View size guide",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 10.sp,
                    color: PreluraColors.activeColor,
                    decoration: TextDecoration.underline,
                    decorationColor: PreluraColors.activeColor,
                    decorationThickness: 2,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "All Sizes",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          const SizedBox(height: 6),
          const Divider(
            thickness: 1,
          ),
          Expanded(
            child: ref.watch(sizeProvider).when(
                  skipLoadingOnRefresh: false,
                  data: (data) => ListView.separated(
                    itemCount: data.length,
                    separatorBuilder: (_, index) => const Divider(
                      thickness: 1,
                    ),
                    itemBuilder: (_, index) => ListTile(
                      title: Text(data[index].sizeValue),
                      trailing: Radio<String>(
                          value: data[index].sizeValue,
                          groupValue: selectedSize,
                          onChanged: (value) => {
                                ref.read(sellItemProvider.notifier).selectSize(data[index]),
                                context.router.popForced(),
                              }),
                    ),
                  ),
                  error: (e, _) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(e.toString()),
                        TextButton.icon(
                          onPressed: () => ref.invalidate(categoryProvider),
                          label: const Text('Retry'),
                          icon: const Icon(Icons.refresh_rounded),
                        ),
                      ],
                    ),
                  ),
                  loading: () => const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                    ),
                  ),
                ),
          ),
        ],
      ),
    );
  }
}
