import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../res/colors.dart';
import '../../../../../../res/images.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/rating.dart';
import '../provider/product_detail_provider.dart';

class ProductTopDetails extends ConsumerWidget {
  const ProductTopDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productDetailProvider);

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Reach more buyers to give items a better chance of selling",
            maxLines: 3,
            overflow: TextOverflow.ellipsis, // Truncate text
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w400,
                ),
          ),
          SizedBox(height: 24),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    product.brand,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.purple,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Text(
                    "Size ${product.size}",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.purple,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ],
              ),
              Row(
                children: [
                  // Product condition text
                  Text(
                    product.condition,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  const SizedBox(width: 8), // Spacing between text and colors

                  // Display color circles in a row
                  Row(
                    children: product.colors
                        .map((color) => Container(
                              width: 10,
                              height: 10,
                              margin: const EdgeInsets.symmetric(horizontal: 1),
                              decoration: BoxDecoration(
                                color:
                                    color, // Assuming `color` is a valid Color object
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                            ))
                        .toList(),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "£${product.price.toStringAsFixed(2)}",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
              ),
              SizedBox(height: 4),
              Text(
                "£${(product.price + product.buyerProtectionCost).toStringAsFixed(2)} including Buyer Protection",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.purple,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(17.5)),
                    child: Center(
                      child: Text(
                        "H",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lennon2999",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Ratings()
                    ],
                  )
                ],
              ),
              AppButton(
                onTap: () {},
                text: "Ask a Question",
                bgColor: PreluraColors.black,
                textColor: PreluraColors.white,
                width: 120,
                height: 39,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Text(
          //       "Lennon2999",
          //       style: Theme.of(context)
          //           .textTheme
          //           .bodyMedium!
          //           .copyWith(fontWeight: FontWeight.bold, fontSize: 13.sp),
          //     ),
          //     SizedBox(
          //       height: 2,
          //     ),
          //     Row(
          //       children: [
          //         Text(
          //           "S",
          //           style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          //               fontWeight: FontWeight.normal, fontSize: 10.sp),
          //         ),
          //         SizedBox(width: 8),
          //         Text(
          //           "·",
          //           style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 10.sp,
          //               ),
          //         ),
          //         SizedBox(width: 8),
          //         Text(
          //           "Lennon2999",
          //           style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          //               fontWeight: FontWeight.normal, fontSize: 10.sp),
          //         ),
          //         SizedBox(width: 8),
          //         Text(
          //           "·",
          //           style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 10.sp,
          //               ),
          //         ),
          //         SizedBox(width: 8),
          //         Text(
          //           "Lennon2999",
          //           style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 10.sp,
          //                 color: PreluraColors.activeColor,
          //                 decoration: TextDecoration.underline,
          //                 decorationColor: PreluraColors.activeColor,
          //                 decorationThickness: 2,
          //               ),
          //         ),
          //       ],
          //     )
          //   ],
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Text(
          //       "#129.00",
          //       style: Theme.of(context)
          //           .textTheme
          //           .bodyMedium!
          //           .copyWith(fontWeight: FontWeight.normal, fontSize: 10.sp),
          //     ),
          //     Row(
          //       children: [
          //         Text(
          //           "#126.00 includes Buyer Protection ",
          //           style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 10.sp,
          //                 color: PreluraColors.activeColor,
          //               ),
          //         ),
          //         Icon(
          //           Icons.verified_outlined,
          //           color: PreluraColors.activeColor,
          //         )
          //       ],
          //     )
          //   ],
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // Container(
          //     padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20),
          //         color: PreluraColors.brown),
          //     child: Row(mainAxisSize: MainAxisSize.min, children: [
          //       SvgPicture.asset(
          //         PreluraIcons.van,
          //         width: 14,
          //         height: 14,
          //         color: PreluraColors.white,
          //       ),
          //       SizedBox(width: 8),
          //       Text(
          //         "up to -100% postage",
          //         style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          //             color: PreluraColors.white,
          //             fontWeight: FontWeight.normal,
          //             fontSize: 10.sp),
          //       ),
          //     ])),
        ],
      ),
    );
  }
}
