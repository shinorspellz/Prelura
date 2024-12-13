import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:prelura_app/core/utils/theme.dart';
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
    bool shouldShowSeeMore = _shouldShowSeeMore(product.description);
    print(product.description);
    String truncatedDescription = _getTruncatedDescription(product.description);

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
                GestureDetector(
                  onTap: () {
                    ref.read(isDescriptionExpandedProvider.notifier).state = !isDescriptionExpanded;
                  },
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: isDescriptionExpanded ? product.description : truncatedDescription,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        if (shouldShowSeeMore)
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
                  // maxLines: !isDescriptionExpanded ? 3 : null,
                  // overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const Divider(
            height: 2,
            thickness: 1,
          ),
          if (product.category != null) _buildInfoRow("Category", product.category!.name, context),
          if (product.subCategory != null) _buildInfoRow("Sub Category", product.subCategory!.name, context),
          if (product.style != null) _buildInfoRow("Style", product.style!.name.replaceAll("_", " "), context, style: context.textTheme.labelLarge),
          if (product.materials != null)
            if (product.materials!.isNotEmpty)
              _buildInfoRow(
                "Material",
                product.materials!.map((e) => e.name).join(', '),
                context,
              ),

          if (product.size != null) _buildInfoRow("Size", product.size!.name.replaceAll('_', ' '), context),
          if (product.condition != null) _buildInfoRow("Condition", product.condition!.simpleName, context),
          _buildInfoRow("Views", product.views.toString(), context),
          _buildInfoRow("Uploaded", DateFormat.yMMMMEEEEd().format(product.createdAt), context),
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

  bool _shouldShowSeeMore(String description) {
    List<String> words = description.split(' ');
    return words.length > 50;
  }

  // Truncate the description to fit within 100 words or 5 lines
  String _getTruncatedDescription(String description) {
    List<String> words = description.split(' ');
    print(words.length);
    if (words.length > 50) {
      return '${words.sublist(0, 40).join(' ')}...';
    }
    return description;
  }

  Widget _buildInfoRow(String label, String value, context, {TextStyle? style}) {
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
            style: style ?? Theme.of(context).textTheme.bodyMedium?.copyWith(color: PreluraColors.greyColor),
          ),
        ],
      ),
    );
  }
}
