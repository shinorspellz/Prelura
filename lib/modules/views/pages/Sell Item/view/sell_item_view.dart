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
import 'package:prelura_app/modules/views/widgets/loading_widget.dart';
import 'package:prelura_app/modules/views/widgets/menu_card.dart';
import 'package:prelura_app/res/helper_function.dart';
import 'package:prelura_app/res/images.dart';
import 'package:sizer/sizer.dart';

import '../../../../../res/colors.dart';
import '../../../../../res/render_svg.dart';
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
  final FocusNode _descriptionfocusNode = FocusNode();
  final FocusNode titlefocusNode = FocusNode();
  final descController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    descController.dispose();
    super.dispose();
  }

  bool canPop = false;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(sellItemProvider);
    final notifier = ref.read(sellItemProvider.notifier);

    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (_, __) {
        notifier.resetState();
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(
              Icons.close,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () async {
              // FocusScope.of(context).unfocus();

              final notifier = ref.read(sellItemProvider.notifier);

              if (notifier.hasChanges()) {
                final shouldDiscard = await showDialog<bool>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Unsaved Changes'),
                      content: const Text(
                          'You have unsaved changes. Do you want to save them as a draft or discard them?'),
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
                if (widget.product == null && state.images.isEmpty) ...[
                  Container(
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        border: Border.all(
                          width: 12,
                          color: Theme.of(context).dividerColor,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16),
                    child: GestureDetector(
                      onTap: () => notifier.addImages(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          child: Column(
                            children: [
                              Icon(
                                Icons.add_circle,
                                size: 48.sp,
                                color: PreluraColors.grey,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Add up to 20 photos.',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "See more photo tips",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10.sp,
                                          color: PreluraColors.activeColor,
                                          decoration: TextDecoration.underline,
                                          decorationColor:
                                              PreluraColors.activeColor,
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
                ],
                if (state.images.isNotEmpty) ...[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: SizedBox(
                      height: 130,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ReorderableListView(
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.horizontal,
                              physics: const NeverScrollableScrollPhysics(),
                              onReorder: (int oldIndex, int newIndex) {
                                setState(() {
                                  if (oldIndex < newIndex) {
                                    newIndex -= 1;
                                  }
                                  final item = state.images.removeAt(oldIndex);
                                  state.images.insert(newIndex, item);
                                });
                              },
                              children: state.images
                                  .map((image) => Container(
                                        key: ValueKey(image),
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.transparent),
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(
                                                  8), // Match the Container's border radius
                                              child: Image.file(
                                                File(image.path),
                                                fit: BoxFit.cover,
                                                height: 142,
                                                width: 100,
                                              ),
                                            ),
                                            if (state.images.contains(image))
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: IconButton(
                                                    //use VIcons here
                                                    icon: RenderSvg(
                                                      // svgPath: VIcons.trashIcon,
                                                      svgPath: PreluraIcons
                                                          .removeIcon,
                                                      color:
                                                          PreluraColors.white,
                                                    ),
                                                    color: PreluraColors.white,
                                                    onPressed: () {
                                                      notifier
                                                          .deleteImage(image);
                                                    }),
                                              ),
                                          ],
                                        ),
                                      ))
                                  .toList(),
                            ),
                            GestureDetector(
                              onTap: () => notifier.addImages(),
                              child: Container(
                                  width: 100,
                                  height: 142,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.grey[400],
                                  ),
                                  child: Center(
                                    child: Icon(Icons.add_circle, size: 32.sp),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],

                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        PreluraAuthTextField(
                          label: 'Title',
                          labelStyle: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.w400),
                          hintText: 'e.g. White COS Jumper',
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.w400),
                          onChanged: notifier.updateTitle,
                          controller: titleController,
                        ),
                        const SizedBox(height: 16),
                        PreluraAuthTextField(
                          label: 'Describe your item',
                          textInputAction: TextInputAction.newline,
                          // formatter: FilteringTextInputFormatter.allow(
                          //     RegExp(r'[^\n]+')),
                          keyboardType: TextInputType.multiline,
                          focusNode: _descriptionfocusNode,
                          labelStyle: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  fontWeight: FontWeight.w400, fontSize: 17),
                          hintText: 'e.g. only worn a few times, true to size',
                          minLines: 6,
                          maxLines: null,
                          isDescription: true,
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  fontWeight: FontWeight.w400, fontSize: 18),
                          onChanged: notifier.updateDescription,
                          // focusNode: _descriptionfocusNode,
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

                if (state.subCategory?.name != 'Accessories')
                  MenuCard(
                    title: 'Size',
                    rightArrow: false,
                    subtitle: state.size?.name.replaceAll('_', ' '),
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
                  title: 'Condition',
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
                  subtitle:
                      '${state.selectedMaterials.map((e) => e.name).take(2).join(', ')} ${state.selectedMaterials.length > 2 ? '...' : ''}',
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
                      HelperFunction.context = context;
                      final files =
                          state.images.map((x) => File(x.path)).toList();
                      if (files.isEmpty && widget.product == null) {
                        HelperFunction.showToast(
                            message: 'Images are required to sell product');
                        return;
                      }

                      if (state.category == null) {
                        HelperFunction.showToast(
                            message: 'Select an item category to proceed.');
                        return;
                      }
                      if (state.subCategory == null) {
                        HelperFunction.showToast(
                            message: 'Select an item sub category to proceed.');
                        return;
                      }
                      // if (state.size == null) {
                      //   HelperFunction.showToast(message: 'Select an size category to proceed.');
                      //   return;
                      // }
                      if (state.price == null) {
                        HelperFunction.showToast(
                            message: 'Price is required for product.');
                        return;
                      }
                      if (state.selectedCondition == null) {
                        HelperFunction.showToast(
                            message: 'Condition is required for product.');
                        return;
                      }
                      if (state.parcel == null) {
                        HelperFunction.showToast(
                            message: 'Parcel size is required for product.');
                        return;
                      }
                      if (state.selectedColors.isEmpty) {
                        HelperFunction.showToast(
                            message: 'Colors are required for product.');
                        return;
                      }
                      if (state.selectedMaterials.isEmpty) {
                        HelperFunction.showToast(
                            message: 'Materials are required for product.');
                        return;
                      }
                      if (state.brand == null) {
                        HelperFunction.showToast(
                            message: 'A `brand` is required for product.');
                        return;
                      }
                      // if (state.selectedColors.) {
                      //   context.alert('Parcel size is required for product.');
                      //   return;
                      // }

                      if (!notifier.validateInputs()) {
                        HelperFunction.showToast(
                            message:
                                'Both title and description of product are requuired');
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
                              category:
                                  int.parse(state.category!.id.toString()),
                              subCategory:
                                  int.parse(state.subCategory!.id.toString()),
                              color: state.selectedColors,
                              brandId: state.brand!.id,
                              materials: state.selectedMaterials
                                  .map((e) => e.id)
                                  .toList(),
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
                            subCategory:
                                int.parse(state.subCategory!.id.toString()),
                            brandId: state.brand!.id,
                            color: state.selectedColors,
                            materials: state.selectedMaterials
                                .map((e) => e.id)
                                .toList(),
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
                              child: LoadingWidget(),
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
      ),
    );
  }
}
