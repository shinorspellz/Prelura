import 'package:flutter/material.dart';
import 'package:prelura_app/views/shimmers/custom_shimmer.dart';
import 'package:prelura_app/views/shimmers/grid_shimmer.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

Widget ProductDetailsShimmer() {
  return SingleChildScrollView(
    // padding: EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //product image
        CustomShimmer(
          child: Container(
            height: 550,
            width: 100.w,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        //product name
        Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomShimmer(
                  child: Container(
                height: 5.h,
                width: 75.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
              addVerticalSpacing(12),
              //product brand
              CustomShimmer(
                  child: Container(
                height: 3.h,
                width: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
              addVerticalSpacing(5),
              //product size
              CustomShimmer(
                  child: Container(
                height: 3.h,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
              addVerticalSpacing(5),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomShimmer(
                      child: Container(
                    height: 3.h,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
                  addHorizontalSpacing(5),
                  CustomShimmer(
                    child: Container(
                      height: 3.h,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
              addVerticalSpacing(15),

              // ListView.builder(
              //   shrinkWrap: true,
              //   scrollDirection: Axis.horizontal,
              //   physics: NeverScrollableScrollPhysics(),
              //   itemCount: 3,
              //   itemBuilder: (context, index) {
              //     return Row(
              //       children: [
              //         Shimmer.fromColors(
              //             baseColor: Colors.grey[200]!,
              //             highlightColor: Colors.grey[300]!,
              //             child: Container(
              //               height: 16,
              //               width: 16,
              //               decoration: BoxDecoration(
              //                 color: Colors.white,
              //                 borderRadius: BorderRadius.circular(8),
              //               ),
              //             )),
              //         addHorizontalSpacing(4),
              //         Shimmer.fromColors(
              //             baseColor: Colors.grey[200]!,
              //             highlightColor: Colors.grey[300]!,
              //             child: Container(
              //               height: 40,
              //               width: 90,
              //               decoration: BoxDecoration(
              //                 color: Colors.white,
              //               ),
              //             )),
              //       ],
              //     );
              //   },
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomShimmer(
                          child: Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(32.5)),
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomShimmer(
                              child: Container(
                            height: 25,
                            width: 125,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          )),
                          addVerticalSpacing(5),
                          Row(children: [
                            CustomShimmer(
                                child: Container(
                              height: 25,
                              width: 35,
                              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                            )),
                            addHorizontalSpacing(10),
                            CustomShimmer(
                                child: Container(
                              height: 25,
                              width: 45,
                              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                            )),
                          ])
                        ],
                      )
                    ],
                  ),
                  CustomShimmer(
                      child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  )),
                ],
              ),
              addVerticalSpacing(3),
              CustomShimmer(
                  child: Container(
                height: 75,
                width: 100.w,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
              )),

              addVerticalSpacing(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomShimmer(
                      child: Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(17.5)),
                  )),
                  CustomShimmer(
                      child: Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(17.5)),
                  )),
                ],
              ),
              addVerticalSpacing(10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomShimmer(
                      child: Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(17.5)),
                  )),
                  CustomShimmer(
                      child: Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(17.5)),
                  )),
                ],
              ),
              addVerticalSpacing(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomShimmer(
                      child: Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(17.5)),
                  )),
                  CustomShimmer(
                      child: Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(17.5)),
                  )),
                ],
              ),
              // ListView.builder(
              //     shrinkWrap: true,
              //     itemCount: 5,
              //     itemBuilder: (context, index) {
              //       return Column(
              //         children: [
              //           addVerticalSpacing(3),
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               Shimmer.fromColors(
              //                   baseColor: Colors.grey[200]!,
              //                   highlightColor: Colors.grey[300]!,
              //                   child: Container(
              //                     height: 35,
              //                     width: 100,
              //                     decoration: BoxDecoration(
              //                         color: Colors.white,
              //                         borderRadius: BorderRadius.circular(17.5)),
              //                   )),
              //               Shimmer.fromColors(
              //                   baseColor: Colors.grey[200]!,
              //                   highlightColor: Colors.grey[300]!,
              //                   child: Container(
              //                     height: 35,
              //                     width: 70,
              //                     decoration: BoxDecoration(
              //                         color: Colors.white,
              //                         borderRadius: BorderRadius.circular(17.5)),
              //                   )),
              //             ],
              //           ),
              //         ],
              //       );
              //     }),
              addVerticalSpacing(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomShimmer(
                      child: Container(
                    height: 45,
                    width: 45.w,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(17.5)),
                  )),
                  CustomShimmer(
                      child: Container(
                    height: 45,
                    width: 45.w,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(17.5)),
                  )),
                ],
              ),
              // addVerticalSpacing(5),
              GridShimmer(),
            ]))
      ],
    ),
  );
}
