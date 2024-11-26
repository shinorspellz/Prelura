import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../res/colors.dart';
import '../provider/product_detail_provider.dart';

final isDescriptionExpandedProvider = StateProvider<bool>((ref) => false);

class ProductDescription extends ConsumerWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productDetailProvider);
    final isDescriptionExpanded = ref.watch(isDescriptionExpandedProvider);

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text.rich(
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        ref.read(isDescriptionExpandedProvider.notifier).state =
                            !isDescriptionExpanded;
                      },
                    children: [
                      TextSpan(
                        text: isDescriptionExpanded
                            ? "worn a couple times but left tag in to resell. "
                                "I have the authentication proof feel free to ask for it. "
                                "Consumer protection laws do not apply to your purchases from other consumers. "
                                "More specifically, the right to reject (section 20 of the Consumer Rights Act) does not apply. "
                                "Buyer's rights are significantly reduced when a sale is carried out between two individuals. "
                                "For more details, please review the full legal disclaimer."
                            : "worn a couple times but left tag in to resell. "
                                "I have the authentication proof feel free to ask for it...",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: isDescriptionExpanded ? " See less" : " See more",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          _buildInfoRow("Category", product.category, context),
          _buildInfoRow("Size", product.size, context),
          _buildInfoRow("Condition", product.condition, context),
          _buildInfoRow("Views", "${product.views}", context),
          _buildInfoRow("Uploaded", product.uploadTime, context),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 16),
            decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                border: Border(
                    bottom: BorderSide(
                  width: 1,
                  color: Theme.of(context).dividerColor,
                ))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Postage",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  "Postage: From £${product.postageCost.toStringAsFixed(2)}",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500, color: Colors.purple),
                ),
              ],
            ),
          ),

          // Container(
          //   padding: EdgeInsets.all(16.0),
          //   decoration: BoxDecoration(
          //     color: Theme.of(context).scaffoldBackgroundColor,
          //     borderRadius: BorderRadius.circular(8.0),
          //   ),
          //   child: Row(
          //     children: [
          //       Icon(
          //         Icons.shield,
          //         color: PreluraColors.activeColor,
          //       ),
          //       SizedBox(width: 8.0),
          //       Expanded(
          //         child: RichText(
          //           text: TextSpan(
          //             style: Theme.of(context).textTheme.bodySmall,
          //             children: [
          //               TextSpan(
          //                 text: "Buyer Protection fee\n",
          //                 style: TextStyle(fontWeight: FontWeight.bold),
          //               ),
          //               TextSpan(
          //                 text:
          //                     "Our Buyer Protection is added for a fee to every purchase made with the “Buy now” button. Buyer Protection includes our ",
          //               ),
          //               TextSpan(
          //                 text: "Refund Policy.",
          //                 style: TextStyle(
          //                     color: Colors.blue,
          //                     decoration: TextDecoration.underline,
          //                     decorationColor: Colors.blue),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // SizedBox(height: 16.0),
          // Container(
          //   padding: EdgeInsets.all(16.0),
          //   decoration: BoxDecoration(
          //     color: Theme.of(context).scaffoldBackgroundColor,
          //     borderRadius: BorderRadius.circular(8.0),
          //   ),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Text(
          //             "Postage",
          //             style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          //                   fontWeight: FontWeight.w400,
          //                 ),
          //           ),
          //           SizedBox(
          //             width: 20,
          //           ),
          //           Text(
          //             "from #0.00",
          //             style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          //                   fontWeight: FontWeight.normal,
          //                 ),
          //           ),
          //         ],
          //       ),
          //       SizedBox(height: 8.0),
          //       Container(
          //         padding: EdgeInsets.all(16),
          //         decoration: BoxDecoration(
          //             color: PreluraColors.activeColor.withOpacity(0.2)),
          //         child: Text(
          //           "Get discounts of up to 100% off for pick-up point delivery. "
          //           "See further details at checkout.",
          //           style: Theme.of(context)
          //               .textTheme
          //               .bodySmall
          //               ?.copyWith(fontWeight: FontWeight.w500),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 16),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border(
              bottom: BorderSide(
            width: 1,
            color: Theme.of(context).dividerColor,
          ))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
          ),
        ],
      ),
    );
  }
}
