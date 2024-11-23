import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/auth/views/pages/Sell%20Item/provider/condition_provider.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_button.dart';
import 'package:prelura_app/modules/auth/views/widgets/menu_card.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../res/colors.dart';
import '../provider/brand_provider.dart';
import '../provider/parcel_provider.dart';
import '../provider/price_provider.dart';
import '../provider/sell_item_provider.dart';

@RoutePage()
class SellItemScreen extends ConsumerWidget {
  const SellItemScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sellItemProvider);
    final notifier = ref.read(sellItemProvider.notifier);
    final brandSelected = ref.watch(selectedBrandProvider);
    final sizeSelected = ref.watch(selectedSizeProvider);
    final parcelSizes = ref.watch(parcelProvider);
    final selectedCondition = ref.watch(conditionProvider);
    final pricePageState = ref.watch(pricePageProvider);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () => context.router.popUntilRoot(),
        ),
        title: Text(
          'Sell an item',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).appBarTheme.backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Add up to 20 photos.',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "See more photo tips",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp,
                                    color: PreluraColors.activeColor,
                                    decoration: TextDecoration.underline,
                                    decorationColor: PreluraColors.activeColor,
                                    decorationThickness: 2,
                                  ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    GestureDetector(
                        onTap: () => notifier.addImages(),
                        child: Center(
                          child: AppButton(
                            onTap: () {
                              notifier.addImages();
                            },
                            text: "upload photos",
                            bgColor: Theme.of(context).scaffoldBackgroundColor,
                            textWidget: const Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  color: PreluraColors.activeColor,
                                ),
                                SizedBox(
                                  width: 8,
                                )
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              if (state.images.isNotEmpty)
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: state.images
                      .map((image) => Image.file(
                            File(image.path),
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ))
                      .toList(),
                ),
              const SizedBox(height: 16),
              TextField(
                autofocus: false,
                onChanged: notifier.updateTitle,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  labelText: 'Title',
                  labelStyle: TextStyle(color: Colors.grey),
                  hintText: 'e.g. White COS Jumper',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                autofocus: false,
                onChanged: notifier.updateDescription,
                style: const TextStyle(color: Colors.white),
                maxLines: 4,
                decoration: const InputDecoration(
                  labelText: 'Describe your item',
                  labelStyle: TextStyle(color: Colors.grey),
                  hintText: 'e.g. only worn a few times, true to size',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              MenuCard(
                title: "Category",
                subtitle: state.product,
                onTap: () {
                  context.router.push(const CategoryRoute());
                },
              ),
              MenuCard(
                title: 'Brand',
                subtitle: brandSelected ?? "",
                onTap: () {
                  context.router.push(const BrandSelectionRoute());
                },
              ),
              const SizedBox(height: 16),
              MenuCard(
                title: 'Size',
                subtitle: sizeSelected ?? "",
                onTap: () {
                  context.router.push(const SizeSelectionRoute());
                },
              ),
              MenuCard(
                title: 'Measurements (Recommended)',
                onTap: () {
                  context.router.push(const MaterialSelectionRoute());
                },
              ),
              MenuCard(
                title: 'Condtion',
                subtitle: selectedCondition ?? "",
                onTap: () {
                  context.router.push(const ConditionRoute());
                },
              ),
              MenuCard(
                title: 'Colours',
                onTap: () {
                  context.router.push(const ColorSelectorRoute());
                },
              ),
              MenuCard(
                title: 'Material (Recommended)',
                subtitle: brandSelected ?? "",
                onTap: () {
                  context.router.push(const MaterialSelectionRoute());
                },
              ),
              const SizedBox(height: 16),
              MenuCard(
                title: 'Price',
                subtitle: pricePageState.currentPrice,
                onTap: () {
                  context.router.push(const PriceRoute());
                },
              ),
              const SizedBox(height: 16),
              MenuCard(
                title: 'Parcel Size',
                subtitle: parcelSizes,
                onTap: () {
                  context.router.push(const ParcelRoute());
                },
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'The buyer always pays for postage.',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),

              // GestureDetector(
              //   onTap: () {
              //     // Open additional compensation info
              //   },
              //   child: Text(
              //     'See compensation information for sellers',
              //     style: TextStyle(color: Colors.blue, fontSize: 12),
              //   ),
              // ),
              InkWell(
                onTap: () => {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    border: Border(
                      bottom: BorderSide(
                        color: Theme.of(context)
                            .dividerColor, // Use the theme's divider color
                        width: 2.0,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 16),
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Bump item",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    const SizedBox(
                                        height: 4), // Add spacing between texts
                                    Text(
                                      "Reach more buyers to give items a better chance of selling",
                                      maxLines: 3,
                                      overflow: TextOverflow
                                          .ellipsis, // Truncate text
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontWeight: FontWeight.w400,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 30),
                              Text(
                                'from #1.00',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                              const SizedBox(width: 10),
                              Checkbox(value: true, onChanged: (value) {})
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Row(
                  children: [
                    const Expanded(
                        child:
                            Text("What do you think of our upload process ?")),
                    const SizedBox(
                      width: 10,
                    ),
                    AppButton(
                      onTap: () {
                        notifier.addImages();
                      },
                      text: "Give feedback",
                      bgColor: Theme.of(context).scaffoldBackgroundColor,
                      width: 120,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () async {
                    if (notifier.validateInputs()) {
                      await notifier.uploadItem();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Item uploaded successfully!')),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content:
                                Text('Please fill in all required fields')),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Upload',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
