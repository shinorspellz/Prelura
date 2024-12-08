import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';
import 'package:prelura_app/modules/views/pages/Sell%20Item/provider/condition_provider.dart';
import 'package:prelura_app/modules/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/views/widgets/app_button.dart';
import 'package:prelura_app/modules/views/widgets/auth_text_field.dart';
import 'package:prelura_app/modules/views/widgets/menu_card.dart';
import 'package:sizer/sizer.dart';

import '../../../../../res/colors.dart';
import '../../auth_page.dart';
import '../provider/brand_provider.dart';
import '../provider/parcel_provider.dart';
import '../provider/price_provider.dart';
import '../provider/sell_item_provider.dart';

@RoutePage()
class SellItemScreen extends ConsumerStatefulWidget {
  const SellItemScreen({super.key, this.product});
  final Product? product;

  @override
  ConsumerState<SellItemScreen> createState() => _SellItemScreenState();
}

class _SellItemScreenState extends ConsumerState<SellItemScreen> {
  @override
  void initState() {
    if (widget.product != null) {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) {
          ref.read(sellItemProvider.notifier).productToItem(widget.product!);
          titleController.text = widget.product!.name;
          descController.text = widget.product!.description;
        },
      );
    }

    super.initState();
  }

  final titleController = TextEditingController();
  final descController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    descController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(sellItemProvider);
    final notifier = ref.read(sellItemProvider.notifier);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon: Icon(
            Icons.close,
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () async {
            FocusScope.of(context).unfocus();
            print("true");

            final notifier = ref.read(sellItemProvider.notifier);

            if (notifier.hasChanges()) {
              final shouldDiscard = await showDialog<bool>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Unsaved Changes'),
                    content: const Text('You have unsaved changes. Do you want to save them as a draft or discard them?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          notifier.resetState();
                          titleController.clear();
                          descController.clear();
                          Navigator.of(context).pop(false);
                        },
                        child: const Text('Discard'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(true),
                        child: const Text('Save Draft'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(null),
                        child: const Text('Cancel'),
                      ),
                    ],
                  );
                },
              );

              if (shouldDiscard == null) return; // User canceled.
              if (shouldDiscard) {
                // Save draft logic
                await notifier.uploadItem(); // Simulate saving the draft
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Draft saved successfully!')),
                );
              } else {
                titleController.clear();
                descController.clear();
                notifier.resetState();
              }
            }
            Navigator.pop(context);
            // final tabRouter = AutoTabsRouter.of(context);
            // tabRouter.setActiveIndex(ref.read(routePathProvider.notifier).state);
          },
        ),
        appbarTitle: 'Sell an item',
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.product == null) ...[
                Container(
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      border: Border.all(
                        width: 12,
                        color: Theme.of(context).dividerColor,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                  child: GestureDetector(
                    onTap: () => notifier.addImages(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        child: Column(
                          children: [
                            Icon(Icons.add_circle, size: 48.sp),
                            const SizedBox(
                              height: 10,
                            ),
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
                                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                          ],
                        ),
                      ),
                    ),
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
              ],
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      PreluraAuthTextField(
                        label: 'Title',
                        labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400),
                        hintText: 'e.g. White COS Jumper',
                        hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400),
                        onChanged: notifier.updateTitle,
                        controller: titleController,
                      ),
                      const SizedBox(height: 16),
                      PreluraAuthTextField(
                        label: 'Describe your item',
                        labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400, fontSize: 17),
                        hintText: 'e.g. only worn a few times, true to size',
                        minLines: 6,
                        maxLines: null,
                        hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400, fontSize: 18),
                        onChanged: notifier.updateDescription,
                        controller: descController,
                        // maxLines: null,
                      ),
                    ],
                  )),
              const SizedBox(height: 16),
              MenuCard(
                title: "Category",
                subtitle: state.subCategory?.name ?? state.category?.name,
                rightArrow: false,
                onTap: () {
                  context.router.push(const CategoryRoute());
                },
              ),
              MenuCard(
                title: 'Brand',
                rightArrow: false,
                subtitle: state.brand?.name,
                onTap: () {
                  context.router.push(const BrandSelectionRoute());
                },
              ),
              MenuCard(
                title: 'Size',
                rightArrow: false,
                subtitle: state.size?.name,
                onTap: () {
                  context.router.push(const SizeSelectionRoute());
                },
              ),
              MenuCard(
                title: 'Measurements (Recommended)',
                rightArrow: false,
                onTap: () {
                  context.router.push(const MaterialSelectionRoute());
                },
              ),
              MenuCard(
                title: 'Condtion',
                rightArrow: false,
                subtitle: state.selectedCondition?.simpleName,
                onTap: () {
                  context.router.push(const ConditionRoute());
                },
              ),
              MenuCard(
                title: 'Colours',
                subtitle: state.selectedColors.join(', '),
                onTap: () {
                  context.router.push(const ColorSelectorRoute());
                },
              ),
              MenuCard(
                title: 'Material (Recommended)',
                onTap: () {
                  context.router.push(const MaterialSelectionRoute());
                },
              ),
              MenuCard(
                title: 'Price',
                subtitle: state.price,
                onTap: () {
                  context.router.push(const PriceRoute());
                },
              ),
              MenuCard(
                title: 'Parcel Size',
                subtitle: state.parcel?.name,
                rightArrow: false,
                onTap: () {
                  context.router.push(const ParcelRoute());
                },
              ),
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

              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () async {
                    final files = state.images.map((x) => File(x.path)).toList();
                    if (files.isEmpty && widget.product == null) {
                      context.alert('Images are required to sell product');
                      return;
                    }

                    if (state.category == null) {
                      context.alert('Select an item category to proceed.');
                      return;
                    }
                    if (state.subCategory == null) {
                      context.alert('Select an item sub category to proceed.');
                      return;
                    }
                    if (state.size == null) {
                      context.alert('Select an size category to proceed.');
                      return;
                    }
                    if (state.price == null) {
                      context.alert('Price is required for product.');
                      return;
                    }
                    if (state.selectedCondition == null) {
                      context.alert('Condition is required for product.');
                      return;
                    }
                    if (state.parcel == null) {
                      context.alert('Parcel size is required for product.');
                      return;
                    }
                    if (state.selectedColors.isEmpty) {
                      context.alert('Colors are required for product.');
                      return;
                    }
                    if (state.brand == null) {
                      context.alert('A `brand` is required for product.');
                      return;
                    }
                    // if (state.selectedColors.) {
                    //   context.alert('Parcel size is required for product.');
                    //   return;
                    // }

                    if (!notifier.validateInputs()) {
                      context.alert('Both title and description of product are requuired');
                      return;
                    }
                    if (widget.product != null) {
                      await ref.read(productProvider.notifier).updateProduct(
                            productId: int.parse(widget.product!.id),
                            title: state.title,
                            desc: state.description,
                            price: double.parse(state.price!),
                            condition: state.selectedCondition!,
                            parcelSize: state.parcel,
                            size: state.size!,
                            category: int.parse(state.category!.id.toString()),
                            subCategory: int.parse(state.subCategory!.id.toString()),
                          );
                      ref.read(productProvider).whenOrNull(
                            error: (e, _) => context.alert(e.toString()),
                            data: (_) {
                              context.alert('Product updated successfully');
                              Navigator.pop(context);
                              // final tabRouter = AutoTabsRouter.of(context);
                              // tabRouter.setActiveIndex(ref.read(routePathProvider.notifier).state);
                            },
                          );

                      return;
                    }

                    await ref.read(productProvider.notifier).createProduct(
                          title: state.title,
                          desc: state.description,
                          price: double.parse(state.price!),
                          condition: state.selectedCondition!,
                          parcelSize: state.parcel,
                          images: files,
                          size: state.size!,
                          category: int.parse(state.category!.id.toString()),
                          subCategory: int.parse(state.subCategory!.id.toString()),
                          brandId: state.brand!.id,
                          color: state.selectedColors,
                        );
                    ref.read(productProvider).whenOrNull(
                          error: (e, _) => context.alert(e.toString()),
                          data: (_) {
                            context.alert('Product created successfully');
                            Navigator.pop(context);
                            // final tabRouter = AutoTabsRouter.of(context);
                            // tabRouter.setActiveIndex(ref.read(routePathProvider.notifier).state);
                          },
                        );

                    //   await notifier.uploadItem();
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     const SnackBar(content: Text('Item uploaded successfully!')),
                    //   );
                    // } else {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     const SnackBar(content: Text('Please fill in all required fields')),
                    //   );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: PreluraColors.activeColor,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Center(
                    child: ref.watch(productProvider).isLoading
                        ? const SizedBox(
                            height: 25,
                            width: 25,
                            child: CircularProgressIndicator(
                              strokeWidth: 1.8,
                              color: Colors.white,
                            ),
                          )
                        : const Text(
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
