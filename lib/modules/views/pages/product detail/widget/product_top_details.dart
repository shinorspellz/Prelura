import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/modules/controller/product/product_provider.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';
import 'package:prelura_app/modules/views/widgets/bottom_sheet.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';
import 'package:prelura_app/modules/views/widgets/profile_picture.dart';
import 'package:prelura_app/res/context_entension.dart';
import 'package:sizer/sizer.dart';

import '../../../../../res/colors.dart';
import '../../../../../res/images.dart';
import '../../../../../res/render_svg.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/rating.dart';
import '../provider/product_detail_provider.dart';

class ProductTopDetails extends ConsumerWidget {
  const ProductTopDetails({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dummy = ref.watch(productDetailProvider);

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.name,
            maxLines: 3,
            overflow: TextOverflow.ellipsis, // Truncate text
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          const SizedBox(height: 12),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.purple,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Text(
                    "Size ${product.size?.name ?? ''}",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.purple,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  // Product condition text
                  Text(
                    dummy.condition,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 11.sp, fontWeight: FontWeight.w500, color: PreluraColors.greyColor),
                  ),
                  const SizedBox(width: 8), // Spacing between text and colors

                  Text(
                    "£${product.price}",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              // Display color circles in a row
              if (product.color != null)
                Row(
                  children: product.color!.map((color) {
                    final value = ref.watch(colorsProvider).entries.where((e) => e.key == color).first;
                    return Row(
                      children: [
                        Container(
                          width: 16,
                          height: 16,
                          margin: const EdgeInsets.only(right: 4),
                          decoration: BoxDecoration(
                            color: value.value, // Assuming `color` is a valid Color object
                            shape: BoxShape.circle,
                          ),
                        ),
                        Text(
                          value.key,
                          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        8.horizontalSpacing
                      ],
                    );
                  }).toList(),
                ),
            ],
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 4),
              // Text(
              //   "£${(product.price + product.buyerProtectionCost).toStringAsFixed(2)} including Buyer Protection",
              //   style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              //         color: Colors.purple,
              //         fontWeight: FontWeight.w500,
              //       ),
              // ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   height: 35,
                  //   width: 35,
                  //   decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.circular(17.5)),
                  //   child: Center(
                  //     child: Text(
                  //       "H",
                  //       style: Theme.of(context)
                  //           .textTheme
                  //           .bodyMedium!
                  //           .copyWith(fontWeight: FontWeight.bold),
                  //     ),
                  //   ),
                  // ),
                  InkWell(
                      onTap: () {
                        context.router.push(ProfileDetailsRoute(username: product.seller.username));
                      },
                      child: ProfilePictureWidget(
                        username: product.seller.username,
                        profilePicture: product.seller.profilePictureUrl,
                      )),

                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          context.router.push(ProfileDetailsRoute(username: product.seller.username));
                        },
                        child: Text(
                          product.seller.username,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          const Ratings(),
                          Text(
                            "(250)",
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),

              const RenderSvgWithColor2(
                color: PreluraColors.activeColor,
                svgPath: PreluraIcons.askAQuestion,
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     // Pass the data back or proceed to the next screen
              //     Navigator.pop(context);
              //   },
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: PreluraColors.activeColor,
              //     padding: const EdgeInsets.symmetric(vertical: 8),
              //   ),
              //   child: Center(
              //     child:
              //   ),
              // ),
            ],
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
