import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/controller/product/provider/sell_item_provider.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/auth_text_field.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/res/colors.dart';

final discountController =
    StateProvider.autoDispose<TextEditingController>((ref) {
  final discount = ref.read(sellItemProvider).discount;
  log(discount ?? "");
  return TextEditingController(
      text: discount != "null" && discount != null ? discount : "");
});

@RoutePage()
class DiscountPage extends ConsumerWidget {
  const DiscountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final discount = ref.watch(discountController).text;
    log("discount' :'$discount");
    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
        centerTitle: true,
        appbarTitle: "Discount Price",
      ),
      bottomSheet: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: AppButton(
              onTap: () {
                Navigator.pop(context);
              },
              bgColor: PreluraColors.primaryColor,
              borderColor: Colors.transparent,
              isDisabled: ref.watch(sellItemProvider).discount?.isEmpty ?? true,
              text: "Done",
              textColor: PreluraColors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            15.verticalSpacing,
            // Price Section
            PreluraAuthTextField(
              keyboardType: TextInputType.number,
              label: "Discount",
              hintText: "Enter discount amount",
              formatter:[ LengthLimitingTextInputFormatter(3)],
              maxLength: 2,
              controller: ref.watch(discountController),
              onChanged: (value) {
                // Parse the input and clamp it to a maximum of 95
                final discount = int.tryParse(value) ?? 0;
                if (discount > 95) {
                  // Adjust the controller's value if the input exceeds the limit
                  ref.read(discountController).text = '95';
                  ref.read(sellItemProvider.notifier).updateDiscount('95');
                } else {
                  ref.read(sellItemProvider.notifier).updateDiscount(value);
                }
              },
              onSaved: (value) {
                if (value == null || value.isEmpty) {
                  ref.read(sellItemProvider.notifier).updateDiscount('0');
                } else {
                  final discount = int.tryParse(value) ?? 0;
                  if (discount > 95) {
                    ref.read(sellItemProvider.notifier).updateDiscount('95');
                  } else {
                    ref.read(sellItemProvider.notifier).updateDiscount(value);
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
