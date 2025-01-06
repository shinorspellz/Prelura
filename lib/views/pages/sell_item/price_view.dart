import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/auth_text_field.dart';
import 'package:prelura_app/views/widgets/display_section.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/app_button.dart';
import '../../widgets/gesture_navigator.dart';
import '../../../controller/product/provider/price_provider.dart';
import '../../../controller/product/provider/sell_item_provider.dart'; // Update this path

@RoutePage()
class PriceScreen extends ConsumerStatefulWidget {
  const PriceScreen({super.key});

  @override
  ConsumerState<PriceScreen> createState() => _PriceScreenState();
}

class _PriceScreenState extends ConsumerState<PriceScreen> {
  late final controller = TextEditingController(
    text: ref.read(sellItemProvider).price,
  );
  @override
  Widget build(BuildContext context) {
    final priceState = ref.watch(sellItemProvider).price;
    final pricePageState = ref.watch(pricePageProvider);

    return Scaffold(
      resizeToAvoidBottomInset: true, // Prevent resizing of the whole screen when keyboard is shown
      extendBody: true,
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
        centerTitle: true,
        appbarTitle: "Price",
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Price Section
                  PreluraAuthTextField(
                    keyboardType: TextInputType.number,
                    label: "Price",
                    hintText: "Enter price",
                    controller: controller,
                    onChanged: (value) {
                      ref.read(sellItemProvider.notifier).updatePrice(value);
                    },
                    onSaved: (value) {
                      ref.read(sellItemProvider.notifier).updatePrice(value);
                    },
                  ),
                  const SizedBox(height: 32),
                  Text(
                    "Tip: ${pricePageState.recommendedRange} is the recommended price range based on similar items sold on Prelura.",
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 48),

                  // Similar Sold Items Section
                  Text(
                    "Similar sold items",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 8),
                  const DisplaySection(),
                  // Similar Sold Items Section
                  Text(
                    "Similar sold items",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 8),
                  const DisplaySection(),

                  // Done Button
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0, // Position the button at the bottom
            left: 0,
            right: 0,
            child: Container(
              // width: 90.w,
              height: 82,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
                child: AppButton(
                  onTap: priceState != null && priceState.isNotEmpty
                      ? () {
                          print("Price: $priceState");
                          // Pass the data back or proceed to the next screen
                          Navigator.pop(context);
                        }
                      : null,
                  bgColor: PreluraColors.primaryColor,
                  borderColor: Colors.transparent,
                  isDisabled: priceState == null || priceState.isEmpty,
                  text: "Done",
                  textColor: PreluraColors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
