import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prelura_app/controller/product/offer_provider.dart';
import 'package:prelura_app/res/context_entension.dart';
import 'package:prelura_app/views/widgets/auth_text_field.dart';
import 'package:sizer/sizer.dart';

import '../../../core/utils/utils.dart';
import '../../../model/product/product_model.dart';
import '../../../res/colors.dart';
import '../../../res/utils.dart';
import '../../shimmers/grid_shimmer.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/app_button.dart';
import '../../widgets/brand_text_widget.dart';

@RoutePage()
class SendAnOfferScreen extends StatefulHookConsumerWidget {
  const SendAnOfferScreen({
    super.key,
    required this.products,
  });
  final List<ProductModel> products;

  @override
  ConsumerState<SendAnOfferScreen> createState() => _SendAnOfferScreenState();
}

class _SendAnOfferScreenState extends ConsumerState<SendAnOfferScreen> {
  final TextEditingController textController = TextEditingController();
  bool canCreateOffer = false;
  String? errorMessage;
  int activeProductIndex = 0;

  @override
  Widget build(BuildContext context) {
    final maxPrice = calculateMaxPrice();
    final fivePercentDiscount =
        calculateDiscountedAmount(discount: 5, price: maxPrice);
    final tenPercentDiscount =
        calculateDiscountedAmount(discount: 10, price: maxPrice);

    textController.addListener(() => _handleTextChange(maxPrice));

    return Scaffold(
      appBar: _buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildProductInfo(),
            SizedBox(height: 32),
            _buildSuggestionButtons(fivePercentDiscount, tenPercentDiscount),
            SizedBox(height: 24),
            _buildPriceInputField(),
            if (errorMessage != null) ...[
              SizedBox(height: 10),
              _buildErrorMessage(),
            ],
            SizedBox(height: 32),
            _buildSendOfferButton(),
          ],
        ),
      ),
    );
  }

  double calculateMaxPrice() {
    double maxPrice = 0;
    if (widget.products
        .any((productInfo) => productInfo.discountPrice != null)) {
      for (var productInfo in widget.products) {
        if (productInfo.discountPrice != null) {
          maxPrice += calculateDiscountedAmount(
            price: productInfo.price,
            discount: double.parse(productInfo.discountPrice!).toInt(),
          );
        } else {
          maxPrice += productInfo.price;
        }
      }
    } else {
      for (var productInfo in widget.products) {
        maxPrice += productInfo.price;
      }
    }
    return maxPrice;
    // return widget.products
    //         .any((productInfo) => productInfo.discountPrice != null)
    //     ? calculateDiscountedAmount(
    //         price: widget.product.price,
    //         discount: double.parse(widget.product.discountPrice!).toInt(),
    //       )
    //     : widget.product.price;
  }

  void _handleTextChange(double maxPrice) {
    final inputPrice = double.tryParse(textController.text) ?? 0.0;

    if (inputPrice == 0.0) {
      errorMessage = null;
    } else if (inputPrice < (maxPrice * 0.6)) {
      errorMessage = "Offer too low. Try again.";
    }

    setState(() {});
  }

  PreluraAppBar _buildAppBar(BuildContext context) {
    return PreluraAppBar(
      centerTitle: true,
      appbarTitle: "Send an Offer",
      leadingIcon: IconButton(
        icon: Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
        onPressed: () => context.router.back(),
      ),
    );
  }

  Widget _buildProductInfo() {
    final product = widget.products[activeProductIndex];
    final discountedPrice = product.discountPrice != null
        ? calculateDiscountedAmount(
            price: product.price,
            discount: double.parse(product.discountPrice!).toInt(),
          )
        : null;
    bool dragRight = false;

    return Stack(children: [
      GestureDetector(
        onHorizontalDragUpdate: (details) {
          if (widget.products.length == 1) return;
          // Update drag direction
          dragRight = details.delta.dx > 0;
        },
        onHorizontalDragEnd: (_) {
          if (widget.products.length == 1) return;
          // Calculate the new index based on the drag direction
          final int newIndex = dragRight
              ? activeProductIndex - 1 // Dragging right, move to previous index
              : activeProductIndex + 1; // Dragging left, move to next index

          // Ensure the index stays within bounds
          activeProductIndex = newIndex.clamp(0, widget.products.length - 1);

          // Update the UI
          setState(() {});
        },
        child: Container(
          color: Colors.transparent,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: product.imagesUrl.first.thumbnail,
                  height: 21.h,
                  width: 35.w,
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      ShimmerBox(height: 25.h, width: 30.w),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: SizedBox(
                  height: 21.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        capitalizeEachWord(product.name),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                      ),
                      if (product.brand != null ||
                          product.customBrand != null) ...[
                        SizedBox(height: 12),
                        BrandTextWidget(
                          brand: product.brand,
                          customBrand: product.customBrand,
                          fontSize: 16,
                        ),
                      ],
                      if (product.size != null) ...[
                        SizedBox(height: 12),
                        Text(
                          "Size ${product.size!.name}",
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: PreluraColors.grey,
                                    fontWeight: FontWeight.w600,
                                    fontSize: getDefaultSize(size: 16),
                                  ),
                        ),
                      ],
                      Spacer(),
                      _buildPriceDetails(product, discountedPrice),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      if (widget.products.length > 1)
        Positioned(
          top: 10,
          right: 10,
          child: Text("${activeProductIndex + 1}/${widget.products.length}"),
        ),
    ]);
  }

  ///
  ///
  ///
  Widget _buildPriceDetails(ProductModel product, double? discountedPrice) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Row(
          children: [
            Text(
              "£ ${formatDynamicString(product.price.toString())}",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: getDefaultSize(size: 16),
                    decoration: product.discountPrice != null
                        ? TextDecoration.lineThrough
                        : null,
                    color: product.discountPrice != null
                        ? !context.isDarkMode
                            ? Colors.grey
                            : Colors.white30
                        : null,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            if (discountedPrice != null) ...[
              SizedBox(width: 4),
              Text(
                "£ ${formatDynamicString(discountedPrice.toString())}",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: getDefaultSize(size: 16),
                    ),
              ),
            ],
          ],
        );
      },
    );
  }

  ///
  ///
  ///
  // Widget _buildPriceDetails(ProductModel product, double? discountedPrice) {
  //   return Row(
  //     children: [
  //       Text(
  //         "£ ${formatDynamicString(product.price.toString())}",
  //         style: Theme.of(context).textTheme.bodyMedium?.copyWith(
  //               fontSize: getDefaultSize(size: 16),
  //               decoration: product.discountPrice != null
  //                   ? TextDecoration.lineThrough
  //                   : null,
  //               color: product.discountPrice != null
  //                   ? !context.isDarkMode
  //                       ? Colors.grey
  //                       : Colors.white30
  //                   : null,
  //               fontWeight: FontWeight.w600,
  //             ),
  //       ),
  //       if (discountedPrice != null) ...[
  //         SizedBox(width: 4),
  //         Text(
  //           "£ ${formatDynamicString(discountedPrice.toString())}",
  //           style: Theme.of(context).textTheme.bodyMedium?.copyWith(
  //                 fontWeight: FontWeight.w600,
  //                 fontSize: getDefaultSize(size: 16),
  //               ),
  //         ),
  //       ],
  //     ],
  //   );
  // }

  Widget _buildSuggestionButtons(double fivePercent, double tenPercent) {
    return Row(
      children: [
        SugestionButton(
          price: fivePercent.toString(),
          discount: "-5%",
          onTap: () => _applySuggestion(fivePercent),
          context: context,
        ),
        SizedBox(width: 16),
        SugestionButton(
          price: tenPercent.toString(),
          discount: "-10%",
          onTap: () => _applySuggestion(tenPercent),
          context: context,
        ),
      ],
    );
  }

  void _applySuggestion(double price) {
    textController.text = formatDynamicString(price.toString());
    setState(() {
      canCreateOffer = true;
    });
  }

  Widget _buildPriceInputField() {
    return Row(
      children: [
        _buildCurrencySymbolBox(),
        _buildInputField(),
      ],
    );
  }

  Widget _buildCurrencySymbolBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
          border: Border(
              left: BorderSide(
                  width: 0.5, color: PreluraColors.grey.withOpacity(0.5)),
              top: BorderSide(
                  width: 0.5, color: PreluraColors.grey.withOpacity(0.5)),
              bottom: BorderSide(
                  width: 0.5, color: PreluraColors.grey.withOpacity(0.5)))),
      child: Text("£",
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontSize: getDefaultSize(size: 16))),
    );

    //   Container(
    //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15.5),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.only(
    //       topLeft: Radius.circular(10),
    //       bottomLeft: Radius.circular(10),
    //     ),
    //     border: Border(
    //       left: BorderSide(
    //           width: 0.5, color: PreluraColors.grey.withOpacity(0.5)),
    //       top: BorderSide(
    //           width: 0.5, color: PreluraColors.grey.withOpacity(0.5)),
    //       bottom: BorderSide(
    //           width: 0.5, color: PreluraColors.grey.withOpacity(0.5)),
    //     ),
    //   ),
    //   child: Text(
    //     "£",
    //     style: Theme.of(context).textTheme.bodyMedium?.copyWith(
    //           fontSize: getDefaultSize(size: 16),
    //         ),
    //   ),
    // );
  }

  Widget _buildInputField() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            border: Border.all(width: 1, color: PreluraColors.primaryColor)),
        child: PreluraAuthTextField(
          hintText: "Price",
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
          controller: textController,
          formatter: [DecimalTextInputFormatter(decimalRange: 2)],
          onChanged: (newValue) {
            errorMessage = null;
            canCreateOffer = newValue.isNotEmpty;
            setState(() {});

            if (newValue.isEmpty) {
              textController.text = "0";
            } else {
              textController.text = newValue.length > 1
                  ? newValue.replaceFirst(RegExp(r'^0+'), '')
                  : newValue; // removes the prefix "0"
            }
          },
          onSaved: (value) {},
          minWidth: 78.w,
          padding: EdgeInsets.symmetric(vertical: 13, horizontal: 16),
          showPrimaryBorder: true,
          showBorder: false,
        ),
      ),
    );
  }

  Widget _buildErrorMessage() {
    return Text(
      errorMessage!,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontSize: getDefaultSize(size: 12),
            color: PreluraColors.error,
          ),
    );
  }

  Widget _buildSendOfferButton() {
    final offerState = ref.watch(offerProvider);
    log("::::The offers ::::: ${offerState.processingTypes}");
    return AppButton(
      height: 50,
      width: double.infinity,
      fontWeight: FontWeight.w600,
      loading: offerState.isProcessing &&
          offerState.processingTypes.contains("createOffer"),
      isDisabled: !canCreateOffer,
      onTap: () {
        ref.read(offerProvider.notifier).createOffer(
              context,
              productIds: widget.products
                  .map((productInfo) => int.parse(productInfo.id))
                  .toList(),
              // int.parse(widget.products.first.id),

              offerPrice: double.parse(textController.text),
            );
      },
      text: "Send Offer",
    );
  }

  Widget SugestionButton({
    required String price,
    required String discount,
    required Function() onTap,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 43.w,
        padding: EdgeInsets.symmetric(vertical: 13, horizontal: 16),
        decoration: BoxDecoration(
          color: PreluraColors.primaryColor.withOpacity(0.6),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "£ ${formatDynamicString(price)}",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: getDefaultSize(size: 16),
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
            ),
            Text(
              discount,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: getDefaultSize(size: 16),
                    fontWeight: FontWeight.bold,
                    color: context.isDarkMode
                        ? Color(0xffcb89cf)
                        : PreluraColors.primaryColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

///
///
///
// class SendAnOfferScreen extends ConsumerStatefulWidget {
//   const SendAnOfferScreen({super.key, required this.product});
//   final ProductModel product;
//
//   @override
//   ConsumerState<SendAnOfferScreen> createState() => _SendAnOfferScreenState();
// }
//
// class _SendAnOfferScreenState extends ConsumerState<SendAnOfferScreen> {
//   final TextEditingController textController = TextEditingController();
//   bool canCreateOffer = false;
//   String? errorMessage;
//   @override
//   Widget build(BuildContext context) {
//     final double maxPrice = widget.product.discountPrice != null
//         ? calculateDiscountedAmount(
//             price: widget.product.price,
//             discount: double.parse(widget.product.discountPrice!).toInt(),
//           )
//         : widget.product.price;
//
//     textController.addListener(() {
//       final inputText = textController.text;
//       final inputPrice = double.tryParse(inputText) ?? 0.0;
//       log(inputPrice.toInt().toString());
//
//       if (inputText.isNotEmpty && inputPrice != 0.0) {
//         if (inputPrice < (maxPrice * 0.6)) {
//           errorMessage = "Offer to low. Try again";
//         }
//         return;
//       }
//       if (inputText.isEmpty || inputPrice.toInt() == 0) {
//         errorMessage = null;
//       }
//       // setState(() {});
//     });
//
//     final discountedPrice = widget.product.discountPrice != null
//         ? calculateDiscountedAmount(
//             price: widget.product.price,
//             discount: double.parse(widget.product.discountPrice!).toInt(),
//           )
//         : null;
//     final fivePercentDiscount = discountedPrice != null
//         ? calculateDiscountedAmount(discount: 5, price: discountedPrice)
//         : calculateDiscountedAmount(discount: 5, price: widget.product.price);
//     final tenPercentDiscount = discountedPrice != null
//         ? calculateDiscountedAmount(discount: 10, price: discountedPrice)
//         : calculateDiscountedAmount(discount: 10, price: widget.product.price);
//     return Scaffold(
//       appBar: PreluraAppBar(
//         centerTitle: true,
//         appbarTitle: "Send an Offer",
//         leadingIcon: IconButton(
//           icon:
//               Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
//           onPressed: () => context.router.back(),
//         ),
//       ),
//       body: Container(
//           padding: const EdgeInsets.all(16),
//           child: Column(children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(10),
//                   child: CachedNetworkImage(
//                     imageUrl: widget.product.imagesUrl.first.thumbnail,
//                     height: 21.h,
//                     width: 35.w,
//                     fit: BoxFit.cover,
//                     placeholder: (context, url) {
//                       return ShimmerBox(
//                         height: 25.h,
//                         width: 30.w,
//                       );
//                     },
//                     fadeInDuration: Duration.zero,
//                     fadeOutDuration: Duration.zero,
//                   ),
//                 ),
//                 16.horizontalSpacing,
//                 Expanded(
//                   child: SizedBox(
//                     height: 21.h,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         Text(
//                           capitalizeEachWord(widget.product.name),
//                           maxLines: 2,
//                           overflow: TextOverflow.ellipsis, // Truncate text
//                           style: Theme.of(context)
//                               .textTheme
//                               .bodyLarge!
//                               .copyWith(
//                                   fontWeight: FontWeight.w600, fontSize: 18),
//                         ),
//                         12.verticalSpacing,
//                         if (widget.product.brand != null ||
//                             widget.product.customBrand != null)
//                           BrandTextWidget(
//                             brand: widget.product.brand,
//                             customBrand: widget.product.customBrand,
//                             fontSize: 16,
//                           ),
//                         12.verticalSpacing,
//                         Text(
//                           "Size ${widget.product.size?.name ?? ''}",
//                           style:
//                               Theme.of(context).textTheme.bodyMedium?.copyWith(
//                                     color: PreluraColors.grey,
//                                     fontWeight: FontWeight.w600,
//                                     fontSize: getDefaultSize(size: 16),
//                                   ),
//                         ),
//                         if (widget.product.condition != null) ...[
//                           12.verticalSpacing,
//                           Text(
//                             widget.product.condition!.simpleName,
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .bodyMedium
//                                 ?.copyWith(
//                                   color: PreluraColors.greyColor,
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: getDefaultSize(size: 16),
//                                 ),
//                           ),
//                         ],
//                         Spacer(),
//                         Row(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Text(
//                               "£ ${formatDynamicString(widget.product.price.toString())}",
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .bodyMedium
//                                   ?.copyWith(
//                                     fontSize: getDefaultSize(size: 16),
//                                     decoration:
//                                         widget.product.discountPrice != null
//                                             ? TextDecoration.lineThrough
//                                             : null,
//                                     color: widget.product.discountPrice != null
//                                         ? !context.isDarkMode
//                                             ? Colors.grey
//                                             : Colors.white30
//                                         : null,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                             ),
//                             4.horizontalSpacing,
//                             if (widget.product.discountPrice != null)
//                               // 10.horizontalSpacing,
//                               Text(
//                                 "£ ${formatDynamicString(calculateDiscountedAmount(
//                                   price: widget.product.price,
//                                   discount: double.parse(
//                                           widget.product.discountPrice!)
//                                       .toInt(),
//                                 ).toString())}",
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyMedium
//                                     ?.copyWith(
//                                       fontWeight: FontWeight.w600,
//                                       fontSize: getDefaultSize(size: 16),
//                                     ),
//                               ),
//                             // ],
//
//                             Spacer(),
//                             if (widget.product.discountPrice != null)
//                               Container(
//                                 // height: 30,
//                                 // width: 50,
//                                 decoration: BoxDecoration(
//                                   color: '8d100f'.fromHex,
//                                 ),
//                                 padding: EdgeInsets.symmetric(
//                                     horizontal: 10, vertical: 5),
//                                 // alignment: Alignment.center,
//                                 child: Text(
//                                   ' ${double.parse(widget.product.discountPrice!).toInt()}%',
//                                   style: Theme.of(context)
//                                       .textTheme
//                                       .bodyMedium
//                                       ?.copyWith(
//                                         fontWeight: FontWeight.w600,
//                                         color: Colors.white,
//                                         fontSize: getDefaultSize(size: 16),
//                                       ),
//                                 ),
//                               )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             32.verticalSpacing,
//             Row(
//               children: [
//                 SuggestionButton(
//                     onTap: () {
//                       textController.text = fivePercentDiscount.toString();
//                       setState(() {
//                         canCreateOffer = true;
//                       });
//                     },
//                     price: fivePercentDiscount.toString(),
//                     discount: '-5%',
//                     context: context),
//                 16.horizontalSpacing,
//                 SuggestionButton(
//                     onTap: () {
//                       textController.text = tenPercentDiscount.toString();
//                       setState(() {
//                         canCreateOffer = true;
//                       });
//                     },
//                     price: tenPercentDiscount.toString(),
//                     discount: '-10%',
//                     context: context),
//               ],
//             ),
//             24.verticalSpacing,
//             Row(
//               children: [
//                 Container(
//                   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15.5),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(10),
//                         bottomLeft: Radius.circular(10),
//                       ),
//                       border: Border(
//                           left: BorderSide(
//                               width: 0.5,
//                               color: PreluraColors.grey.withOpacity(0.5)),
//                           top: BorderSide(
//                               width: 0.5,
//                               color: PreluraColors.grey.withOpacity(0.5)),
//                           bottom: BorderSide(
//                               width: 0.5,
//                               color: PreluraColors.grey.withOpacity(0.5)))),
//                   child: Text("£",
//                       style: Theme.of(context)
//                           .textTheme
//                           .bodyMedium
//                           ?.copyWith(fontSize: getDefaultSize(size: 16))),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         topRight: Radius.circular(10),
//                         bottomRight: Radius.circular(10),
//                       ),
//                       border: Border.all(
//                           width: 1, color: PreluraColors.primaryColor)),
//                   child: PreluraAuthTextField(
//                     hintText: "Price",
//                     keyboardType: TextInputType.number,
//                     textInputAction: TextInputAction.done,
//                     controller: textController,
//                     onChanged: (newValue) {
//                       errorMessage = null;
//                       canCreateOffer = newValue.isNotEmpty;
//                       setState(() {});
//                       // String numericValue =
//                       //     newValue.replaceAll(RegExp(r'[^0-9]'), '');
//
//                       if (newValue.isEmpty) {
//                         textController.text = "0";
//                       } else {
//                         textController.text = newValue.length > 1
//                             ? newValue.replaceFirst(RegExp(r'^0+'), '')
//                             : newValue;
//                       }
//                     },
//                     onSaved: (value) {},
//                     minWidth: 78.w,
//                     padding: EdgeInsets.symmetric(vertical: 13, horizontal: 16),
//                     showPrimaryBorder: true,
//                     showBorder: false,
//                   ),
//                 ),
//               ],
//             ),
//             10.verticalSpacing,
//             if (errorMessage != null)
//               Text(
//                 errorMessage ?? "",
//                 style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                     fontSize: getDefaultSize(size: 12),
//                     color: PreluraColors.error),
//               ),
//             32.verticalSpacing,
//             AppButton(
//               height: 50,
//               width: double.infinity,
//               // loading: true,
//               fontWeight: FontWeight.w600,
//               isDisabled: !canCreateOffer,
//               onTap: () {
//                 ref
//                     .read(
//                       offerProvider.notifier,
//                     )
//                     .createOffer(
//                       productId: int.parse(widget.product.id),
//                       offerPrice: double.parse(textController.text),
//                     );
//               },
//               text: "Send Offer",
//             )
//           ])),
//     );
//   }
//
//   Widget SuggestionButton(
//       {required String price,
//       required String discount,
//       required Function() onTap,
//       required BuildContext context}) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: 43.w,
//         padding: EdgeInsets.symmetric(vertical: 13, horizontal: 16),
//         decoration: BoxDecoration(
//           color: PreluraColors.primaryColor.withOpacity(0.6),
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               "£ ${price}",
//               style: TextStyle(
//                 fontSize: getDefaultSize(size: 16),
//                 fontWeight: FontWeight.w600,
//                 color: Colors.white,
//               ),
//             ),
//             Text(
//               discount,
//               style: TextStyle(
//                 fontSize: getDefaultSize(),
//                 fontWeight: FontWeight.bold,
//                 color: context.isDarkMode
//                     ? Color(0xffcb89cf)
//                     : PreluraColors.primaryColor,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
