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
  log(discount?.isNotEmpty.toString() ?? "");
  final initialText =
      (discount != null && discount != "null" && discount.isNotEmpty)
          ? "${double.parse(discount).toInt()}%"
          : "0%";

  return TextEditingController(text: initialText);
});

@RoutePage()
class DiscountPage extends ConsumerWidget {
  const DiscountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(discountController);

    void updateTextController(String value) {
      // Ensure only numeric values are allowed
      final numericValue = value.replaceAll(RegExp(r'[^0-9]'), '');
      numericValue.replaceFirst(RegExp(r'^0+'), '');
      final discount = int.tryParse(numericValue) ?? 0;
      log("discount : $discount%");

      if (discount > 95) {
        controller.value = TextEditingValue(
          text: "95%",
          selection: TextSelection.collapsed(offset: "95".length),
        );
        ref.read(sellItemProvider.notifier).updateDiscount('95');
      } else {
        controller.value = TextEditingValue(
          text: "$discount%",
          selection: TextSelection.collapsed(offset: "$discount".length),
        );
        ref.read(sellItemProvider.notifier).updateDiscount(discount.toString());
      }
    }

    controller.addListener(() {
      final text = controller.text;
      if (!text.endsWith("%")) {
        updateTextController(text);
      }

      final cursorPosition = controller.text.length - 1;
      controller.selection = TextSelection.collapsed(offset: cursorPosition);
    });

    int calculateCursorPosition(String text) {
      if (text.isEmpty) {
        return 0; // Start at the beginning if text is empty
      }
      // Example: Set cursor to the middle of the text
      return text.length - 1.floor();
    }

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
            PreluraAuthTextField(
              keyboardType: TextInputType.number,
              label: "Discount",
              hintText: "Enter discount",
              formatter: [LengthLimitingTextInputFormatter(3)],
              maxLength: 3,
              controller: controller,
              onChanged: updateTextController,
              onFieldTap: () {
                int cursorPosition = calculateCursorPosition(controller.text);

                controller.selection = TextSelection.fromPosition(
                  TextPosition(offset: cursorPosition),
                );
              },
              onSaved: (value) {
                if (value == null || value.isEmpty) {
                  ref.read(sellItemProvider.notifier).updateDiscount('0');
                } else {
                  final numericValue = value.replaceAll(RegExp(r'[^0-9]'), '');
                  final discount = int.tryParse(numericValue) ?? 0;
                  ref
                      .read(sellItemProvider.notifier)
                      .updateDiscount(discount > 95 ? '95' : numericValue);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
