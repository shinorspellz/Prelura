import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:prelura_app/controller/product/categories_provider.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/alert.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/model/product/product_model.dart';
import 'package:prelura_app/res/helper_function.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/auth_text_field.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:prelura_app/views/widgets/menu_card.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sizer/sizer.dart';

import '../../../controller/product/provider/sell_item_provider.dart';
import '../../../core/utils/assets.dart';
import '../../../res/colors.dart';
import '../../../res/utils.dart';
import '../../widgets/full_screen_image.dart';

@RoutePage()
class SellItemScreen extends ConsumerStatefulWidget {
  const SellItemScreen({super.key, this.product});
  final ProductModel? product;

  @override
  ConsumerState<SellItemScreen> createState() => _SellItemScreenState();
}

class _SellItemScreenState extends ConsumerState<SellItemScreen> {
  @override
  void initState() {
    dismissKeyboard();
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
      ref
          .read(
        categoryNotifierProvider.notifier,
      )
          .updateState({"categorySize": null});
      ref
          .read(
            categoryNotifierProvider.notifier,
          )
          .loadDataFromCache();
    });
    _descriptionfocusNode.unfocus();
    titlefocusNode.unfocus();
    _descriptionfocusNode.addListener(() {
      if (!_descriptionfocusNode.hasFocus) {
        // Optionally hide the keyboard if focus is lost
        FocusScope.of(context).unfocus();
      }
    });
    titlefocusNode.addListener(() {
      if (!titlefocusNode.hasFocus) {
        // Optionally hide the keyboard if focus is lost
        FocusScope.of(context).unfocus();
      }
    });

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
    _descriptionfocusNode.dispose();
    titlefocusNode.dispose();
    super.dispose();
  }

  bool canPop = false;
  bool selectedDraft = false;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(sellItemProvider);
    final notifier = ref.read(sellItemProvider.notifier);

    final drafts = ref.watch(sellItemDraftProvider).valueOrNull;

    // log(ref.watch(sellItemDraftProvider).toString());

    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (_, __) {
        notifier.resetState();
        _descriptionfocusNode.unfocus();
        titlefocusNode.unfocus();
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
                          onPressed: () {
                            ref
                                .read(sellItemDraftProvider.notifier)
                                .addDraft(state);
                            Navigator.of(context).pop(true);
                          },
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
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if ((drafts?.isNotEmpty ?? false) && !selectedDraft) ...[
                      15.verticalSpacing,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: GestureDetector(
                          onTap: () =>
                              context.pushRoute(DraftsRoute(selected: (draft) {
                            ref
                                .read(sellItemProvider.notifier)
                                .setStateToDraft(draft);
                            titleController.text = draft.title;
                            descController.text = draft.description;
                            setState(() => selectedDraft = true);
                          })),
                          child: Row(
                            children: [
                              Text(
                                'Upload from drafts',
                                style: context.textTheme.bodyLarge?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: PreluraColors.activeColor,
                                ),
                              ),
                              Spacer(),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: PreluraColors.activeColor,
                                child: Text(
                                  drafts!.length.toString(),
                                  style: context.textTheme.labelLarge?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      10.verticalSpacing,
                      buildDivider(context),
                    ],

                    if (state.images.isEmpty) ...[
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
                                    color: PreluraColors.primaryColor,
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
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
                                    log('oldIndex: $oldIndex');
                                    log('newIndex: $newIndex');
                                    setState(() {
                                      final List<XFile> mutableImages =
                                          List.from(state.images);
                                      if (oldIndex < newIndex) {
                                        newIndex -= 1;
                                      }
                                      final item =
                                          mutableImages.removeAt(oldIndex);
                                      mutableImages.insert(newIndex, item);
                                      ref
                                          .read(sellItemProvider.notifier)
                                          .updateImage(mutableImages);
                                    });
                                  },
                                  children: state.images
                                      .asMap()
                                      .entries
                                      .map((image) => Row(
                                            key: ValueKey(image),
                                            children: [
                                              GestureDetector(
                                                key: ValueKey(image),
                                                onTap: () {
                                                  Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                      builder: (_) =>
                                                          FullScreenImage(
                                                        imagePath: state.images,
                                                        isLocal: true,
                                                        initialIndex: image.key,
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: Container(
                                                  key: ValueKey(image),
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 5),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      color: Colors.transparent
                                                          .withOpacity(0.1)),
                                                  child: Stack(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                8), // Match the Container's border radius
                                                        child: Image.file(
                                                          File(
                                                              image.value.path),
                                                          fit: BoxFit.cover,
                                                          height: 142,
                                                          width: 100,
                                                        ),
                                                      ),
                                                      Positioned(
                                                          top: 5,
                                                          right: 5,
                                                          child: Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: CircleAvatar(
                                                              radius: 10,
                                                              backgroundColor:
                                                                  PreluraColors
                                                                      .blueTextColor,
                                                              child: Text(
                                                                "${image.key + 1}",
                                                                style: context
                                                                    .theme
                                                                    .textTheme
                                                                    .bodySmall
                                                                    ?.copyWith(
                                                                        color: PreluraColors
                                                                            .white),
                                                              ),
                                                            ),
                                                          )),
                                                      Positioned(
                                                        bottom: 5,
                                                        right: 5,
                                                        child: Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: InkWell(
                                                              child: Icon(
                                                                Icons
                                                                    .cancel_rounded,
                                                                color: PreluraColors
                                                                    .greyColor,
                                                                fill: 1,
                                                              ),
                                                              onTap: () {
                                                                notifier.deleteImage(
                                                                    image
                                                                        .value);
                                                              }),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              // SizedBox(
                                              //   width: 6,
                                              // ),
                                            ],
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
                                        child: Icon(Icons.add_circle,
                                            size: 32.sp,
                                            color: PreluraColors.primaryColor),
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
                              showSuggestions: true,
                              textCapitalization: TextCapitalization.words,
                              formatter: [UpperCaseTextFormatter()],
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
                              focusNode: titlefocusNode,
                              // textInputAction: TextInputActio,
                            ),
                            const SizedBox(height: 8),
                            PreluraAuthTextField(
                              label: 'Describe your item',
                              textInputAction: TextInputAction.newline,
                              showSuggestions: true,
                              keyboardType: TextInputType.multiline,
                              focusNode: _descriptionfocusNode,
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17),
                              hintText:
                                  'e.g. only worn a few times, true to size',
                              minLines: 6,
                              maxLines: null,
                              isDescription: true,
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18),
                              onChanged: notifier.updateDescription,
                              // focusNode: _descriptionfocusNode,
                              controller: descController,
                              // maxLines: null,
                            ),
                          ],
                        )),
                    //
                    // PreluraCheckBox(
                    //   isChecked: state.isFeatured,
                    //   onChanged: (value) => notifier.updateFeatured(value),
                    //   title: 'Feature',
                    //   style: context.textTheme.bodyLarge?.copyWith(
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    // const SizedBox(height: 8),
                    MenuCard(
                      title: "Category",
                      subtitle: state.category?.name,
                      rightArrow: false,
                      subtitleColor: PreluraColors.greyColor,
                      onTap: () {
                        dismissKeyboard();

                        context.router.push(
                          const NewCategoryRoute(),
                        );
                      },
                    ),
                    MenuCard(
                      title: 'Brand',
                      rightArrow: false,
                      subtitle: state.customBrand ?? state.brand?.name,
                      subtitleColor: PreluraColors.greyColor,
                      onTap: () {
                        dismissKeyboard();

                        context.router.push(const BrandSelectionRoute());
                      },
                    ),

                    if (ref
                            .watch(categoryNotifierProvider)
                            .categorySize
                            ?.isNotEmpty ??
                        false)
                      MenuCard(
                        title: 'Size',
                        rightArrow: false,
                        subtitle: ref
                            .read(categoryNotifierProvider)
                            .selectedSize
                            ?.name
                            ?.replaceAll('_', ' '),
                        subtitleColor: PreluraColors.greyColor,
                        onTap: () {
                          dismissKeyboard();

                          context.router.push(const SizeSelectionRoute());
                        },
                      ),
                    MenuCard(
                      title: 'Measurements (Optional)',
                      rightArrow: false,
                      onTap: () {
                        dismissKeyboard();

                        context.router.push(const MaterialSelectionRoute());
                      },
                    ),
                    MenuCard(
                      title: 'Condition',
                      rightArrow: false,
                      subtitle: state.selectedCondition?.simpleName,
                      subtitleColor: PreluraColors.greyColor,
                      onTap: () {
                        dismissKeyboard();

                        context.router.push(const ConditionRoute());
                      },
                    ),
                    MenuCard(
                      title: 'Colours',
                      subtitle: state.selectedColors.join(', '),
                      subtitleColor: PreluraColors.greyColor,
                      onTap: () {
                        dismissKeyboard();

                        context.router.push(const ColorSelectorRoute());
                      },
                    ),
                    MenuCard(
                      title: 'Material (Optional)',
                      onTap: () {
                        dismissKeyboard();

                        context.router.push(const MaterialSelectionRoute());
                      },
                      subtitleColor: PreluraColors.greyColor,
                      subtitle:
                          '${state.selectedMaterials.map((e) => e.name).take(2).join(', ')} ${state.selectedMaterials.length > 2 ? '...' : ''}',
                    ),
                    MenuCard(
                      title: 'Style (Optional)',
                      subtitleColor: PreluraColors.greyColor,
                      subtitle: state.style?.name
                          .replaceAll("_", " ")
                          .toLowerCase()
                          .capitalize(),
                      onTap: () {
                        dismissKeyboard();

                        context.router.push(const StyleRoute());
                      },
                    ),
                    MenuCard(
                      title: 'Price',
                      subtitle: "£ ${formatDynamicString(state.price) ?? 0}",
                      subtitleColor: PreluraColors.greyColor,
                      onTap: () {
                        dismissKeyboard();

                        context.router.push(const PriceRoute());
                      },
                    ),
                    MenuCard(
                      title: 'Discount Price (Optional)',
                      subtitle:
                          '${state.discount != null && state.discount != "null" && state.discount!.isNotEmpty ? double.parse(state.discount!).toInt() : 0}%',
                      subtitleColor: PreluraColors.greyColor,
                      onTap: () {
                        dismissKeyboard();

                        context.router.push(const DiscountRoute());
                      },
                    ),
                    MenuCard(
                      title: 'Parcel Size',
                      subtitle: state.parcel?.name,
                      subtitleColor: PreluraColors.greyColor,
                      rightArrow: false,
                      onTap: () {
                        dismissKeyboard();

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
                    const SizedBox(
                      height: 70,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: context.theme.scaffoldBackgroundColor,
                height: 90,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
                  child: AppButton(
                      isDisabled: widget.product == null
                          ? (state.category == null ||
                              state.description.isEmpty ||
                              state.images.isEmpty ||
                              state.parcel == null ||
                              state.title.isEmpty ||
                              state.price == null ||
                              state.selectedColors.isEmpty ||
                              state.price == "0" ||
                              (state.brand == null &&
                                  state.customBrand == null) ||
                              state.selectedCondition == null)
                          : (state.category == null ||
                              state.description.isEmpty ||
                              state.parcel == null ||
                              state.title.isEmpty ||
                              state.selectedColors.isEmpty ||
                              (state.brand == null &&
                                  state.customBrand == null) ||
                              state.price == null ||
                              state.price == "0" ||
                              state.price!.isEmpty ||
                              state.selectedCondition == null),
                      width: double.infinity,
                      onTap: () async {
                        dismissKeyboard();
                        HelperFunction.context = context;
                        final files =
                            state.images.map((x) => File(x.path)).toList();
                        if (files.isEmpty && widget.product == null) {
                          // HelperFunction.showToast(
                          context.alert('Images are required to sell product');
                          return;
                        }

                        if (!notifier.validateInputs()) {
                          context.alert(
                              'Both title and description of product are requuired');
                          return;
                        }
                        if (state.category == null) {
                          context.alert('Select an item category to proceed.');
                          return;
                        }
                        // if (state.subCategory == null) {
                        //   context.alert(
                        //       'Select an item sub category to proceed.');
                        //   return;
                        // }
                        if (state.brand == null && state.customBrand == null) {
                          context.alert(
                              'A `brand` or `Custom brand` is required for product.');
                          return;
                        }
                        // if (state.size == null && widget.product == null) {
                        //   context.alert('Select an size to proceed.');
                        //   return;
                        // }
                        if (state.selectedCondition == null) {
                          context.alert('Condition is required for product.');
                          return;
                        }
                        if (state.selectedColors.isEmpty) {
                          context.alert('Colors are required for product.');
                          return;
                        }
                        log(state.price.toString(),
                            name: 'price in sell item view');
                        if (state.price == null || state.price == '0') {
                          HelperFunction.context = context;
                          context.alert('Price is required for product.');
                          return;
                        }
                        if (state.parcel == null) {
                          context.alert('Parcel size is required for product.');
                          return;
                        }
                        // if (state.selectedMaterials.isEmpty) {
                        //   HelperFunction.showToast(message: 'Materials are required for product.');
                        //   return;
                        // }

                        // if (state.selectedColors.) {
                        //   context.alert('Parcel size is required for product.');
                        //   return;
                        // }

                        log(state.toJson().toString());
                        if (widget.product != null) {
                          log(state.discount!.isEmpty.toString());
                          await ref
                              .read(productProvider.notifier)
                              .updateProduct(
                                productId: int.parse(widget.product!.id),
                                title: state.title,
                                desc: state.description,
                                price: double.parse(state.price!),
                                condition: state.selectedCondition!,
                                parcelSize: state.parcel,
                                size: state.size?.id,
                                category:
                                    int.parse(state.category!.id.toString()),
                                brandId: state.brand?.id,
                                materials: state.selectedMaterials
                                    .map((e) => e.id)
                                    .toList(),
                                style: state.style,
                                color: state.selectedColors,
                                discount: state.discount == null ||
                                        state.discount == "null" ||
                                        state.discount == "0" ||
                                        state.discount!.isEmpty
                                    ? 0
                                    : double.parse(state.discount!),
                                customBrand: state.customBrand,
                                isFeatured: state.isFeatured,
                              );
                          ref.read(productProvider).whenOrNull(
                                error: (e, _) => context.alert(e.toString()),
                                data: (data) {
                                  context.alert('Product updated!');
                                  ref.refresh(getProductProvider(
                                      int.parse(widget.product!.id)));
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
                              size: state.size?.id,
                              category:
                                  int.parse(state.category!.id.toString()),
                              brandId: state.brand?.id,
                              color: state.selectedColors,
                              materials: state.selectedMaterials
                                  .map((e) => e.id)
                                  .toList(),
                              style: state.style,
                              discount: state.discount == null ||
                                      state.discount == "null" ||
                                      state.discount == "0" ||
                                      state.discount!.isEmpty
                                  ? 0
                                  : double.parse(state.discount!),
                              customBrand: state.customBrand,
                              isFeatured: state.isFeatured,
                            );
                        ref.read(productProvider).whenOrNull(
                          error: (e, _) {
                            log(e.toString(), stackTrace: _);
                            context.alert("An error occurred");
                          },
                          data: (_) {
                            context.alert('Product created successfully');
                            // Navigator.pop(context);
                            // final tabRouter = AutoTabsRouter.of(context);
                            // tabRouter.setActiveIndex(2);

                            context.router.replace(UserProfileDetailsRoute());
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
                      loading: ref.watch(productProvider).isLoading,
                      text: widget.product == null ? "Upload" : "Update"),
                ),
              ),
            ),
            if (ref.watch(productProvider).isLoading)
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
                    child: Center(
                      child: Lottie.asset(
                        AnimationAssets.laundry,
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ))
          ],
        ),
      ),
    );
  }
}
