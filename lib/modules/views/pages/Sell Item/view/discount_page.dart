import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/views/pages/Sell%20Item/provider/sell_item_provider.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/app_button.dart';
import 'package:prelura_app/modules/views/widgets/auth_text_field.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/helper_function.dart';

final discountController = StateProvider.autoDispose((ref) => TextEditingController(text: ref.read(sellItemProvider).discount));

@RoutePage()
class DiscountPage extends ConsumerWidget {
  const DiscountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
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
              hintText: "Enter discount offer",
              formatter: LengthLimitingTextInputFormatter(3),
              controller: ref.watch(discountController),
              onChanged: (value) {
                ref.read(sellItemProvider.notifier).updateDiscount(value);
              },
              onSaved: (value) {
                ref.read(sellItemProvider.notifier).updateDiscount(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
