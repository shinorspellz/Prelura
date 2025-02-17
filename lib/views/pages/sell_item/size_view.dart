import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/categories_provider.dart';
import 'package:prelura_app/model/product/product_model.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:sizer/sizer.dart';

import '../../../controller/product/provider/brand_provider.dart';
import '../../../controller/product/provider/sell_item_provider.dart';
import '../../../res/colors.dart';
import '../../../res/utils.dart';
import '../../widgets/app_checkbox.dart';

@RoutePage()
class SizeSelectionPage extends ConsumerWidget {
  const SizeSelectionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSize = ref.watch(selectedSizeProvider);
    final categoryState = ref.watch(categoryNotifierProvider);

    return Scaffold(
      appBar: PreluraAppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        appbarTitle: "Sizes",
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
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
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: getDefaultSize(),
                  ),
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
          buildDivider(context),
          // if (categoryState.categorySize?.isNotEmpty ?? false)
          Expanded(
            child: ListView.builder(
              itemCount: categoryState.categorySize!.length,
              itemBuilder: (_, index) {
                final value = categoryState.categorySize![index];
                // if (value == Enum$SizeEnum.$unknown) return Container();
                return PreluraCheckBox(
                    title: value.name!.replaceAll('_', ' '),
                    isChecked:
                        value.name == ref.watch(sellItemProvider).size?.name,
                    onChanged: (size) => {
                          ref.read(sellItemProvider.notifier).selectSize(
                              SizeType(id: value.id!, name: value.name!)),
                          context.router.popForced(),
                          ref
                              .read(categoryNotifierProvider.notifier)
                              .updateState({"selectedSize": value}),
                        });
              },
            ),
          )
          // else
          //   Expanded(
          //     child: ListView.builder(
          //       itemCount: Enum$SizeEnum.values.length,
          //       itemBuilder: (_, index) {
          //         final value = Enum$SizeEnum.values[index];
          //         // if (value == Enum$SizeEnum.$unknown) return Container();
          //         return PreluraCheckBox(
          //             title: value.name.replaceAll('_', ' '),
          //             isChecked: value == ref.watch(sellItemProvider).size,
          //             onChanged: (size) => {
          //                   ref
          //                       .read(sellItemProvider.notifier)
          //                       .selectSize(value.name),
          //               ref.read(categoryNotifierProvider.notifier).updateState({
          //               "selectedSize": value
          //             });
          //                   context.router.popForced(),
          //                 });
          //       },
          //     ),
          //   ),
        ],
      ),
    );
  }
}

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton(
      {super.key, required this.isSelected, required this.onChanged});
  final bool isSelected;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(),
      child: Container(
        height: 20,
        width: 20,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: isSelected ? Theme.of(context).primaryColor : Colors.grey,
          ),
        ),
        child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected
                ? Theme.of(context).primaryColor
                : Colors.transparent,
          ),
        ),
      ),
    );
  }
}
