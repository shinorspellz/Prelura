import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/display_section.dart';
import 'package:prelura_app/res/colors.dart';

import '../../../widgets/app_button.dart';
import '../../../widgets/gesture_navigator.dart';
import '../provider/price_provider.dart';
import '../provider/sell_item_provider.dart'; // Update this path

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
      appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.popForced(),
          ),
          centerTitle: true,
          appbarTitle: "Price"),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Price Section
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Price",
                  hintText: "Enter price",
                  border: OutlineInputBorder(),
                ),
                controller: controller,
                onChanged: (value) {
                  ref.read(sellItemProvider.notifier).updatePrice(value);
                },
                onSubmitted: (value) {
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
      bottomNavigationBar: SizedBox(
        height: 112,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 16, bottom: 46, left: 16, right: 16),
          child: AppButton(
            onTap: priceState != null && priceState.isNotEmpty
                ? () {
                    print("Price: $priceState");
                    // Pass the data back or proceed to the next screen
                    Navigator.pop(context);
                  }
                : null,
            bgColor: PreluraColors.primaryColor,
            isDisabled: priceState == null || priceState.isEmpty,
            text: "Done",
          ),
        ),
      ),
    );
  }
}
