import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';
import 'package:sizer/sizer.dart';

import '../../../../../res/colors.dart';
import '../provider/product_detail_provider.dart';

final isDescriptionExpandedProvider = StateProvider<bool>((ref) => false);

class ProductDescription extends ConsumerWidget {
  const ProductDescription({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dummy = ref.watch(productDetailProvider);
    final isDescriptionExpanded = ref.watch(isDescriptionExpandedProvider);

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            height: 2,
            thickness: 1,
          ),
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
                        ref.read(isDescriptionExpandedProvider.notifier).state = !isDescriptionExpanded;
                      },
                    children: [
                      TextSpan(
                        text: isDescriptionExpanded ? product.description : product.description,
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
          const Divider(
            height: 2,
            thickness: 1,
          ),
          if (product.category != null) _buildInfoRow("Category", product.category!.name, context),

          if (product.sizes != null) _buildInfoRow("Size", product.sizes!.map((e) => e.sizeValue).join(', '), context),
          _buildInfoRow("Condition", dummy.condition, context),
          _buildInfoRow("Views", "${dummy.views}", context),
          _buildInfoRow("Uploaded", dummy.uploadTime, context),
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
                  "Postage: From £${dummy.postageCost.toStringAsFixed(2)}",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500, color: Colors.purple),
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
