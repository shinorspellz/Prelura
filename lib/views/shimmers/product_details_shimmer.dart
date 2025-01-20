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
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        //product name
        Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomShimmer(
                  child: Container(
                height: 32,
                width: 75.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
              // addVerticalSpacing(12),
              // //product brand
              // CustomShimmer(
              //     child: Container(
              //   height: 16,
              //   width: 130,
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              // )),
              addVerticalSpacing(6),
              //product size and brand
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomShimmer(
                      child: Container(
                    height: 16,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
                  CustomShimmer(
                      child: Container(
                    height: 16,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
                ],
              ),
              addVerticalSpacing(10),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomShimmer(
                      child: Container(
                    height: 11,
                    width: 65,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
                  Spacer(),
                  CustomShimmer(
                    child: Container(
                      height: 16,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  10.horizontalSpacing,
                  CustomShimmer(
                    child: Container(
                      height: 16,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              addVerticalSpacing(12),
              Row(children: [
                ...[1, 2, 3].map((element) {
                  return Row(
                    children: [
                      CustomShimmer(
                        child: Container(
                          height: 16,
                          width: 15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      CustomShimmer(
                        child: Container(
                          height: 16,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      8.horizontalSpacing
                    ],
                  );
                }).toList(),
              ]),
              16.verticalSpacing,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomShimmer(
                          child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomShimmer(
                              child: Container(
                            height: 16,
                            width: 125,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                          )),
                          addVerticalSpacing(5),
                          Row(children: [
                            CustomShimmer(
                                child: Container(
                              height: 16,
                              width: 65,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            )),
                            addHorizontalSpacing(10),
                            CustomShimmer(
                                child: Container(
                              height: 16,
                              width: 45,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            )),
                          ])
                        ],
                      )
                    ],
                  ),
                  CustomShimmer(
                      child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4)),
                  )),
                ],
              ),
              addVerticalSpacing(20),
              CustomShimmer(
                  child: Container(
                height: 75,
                width: 100.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
              )),

              addVerticalSpacing(20),
              ...[1, 2, 3, 4, 5, 6, 7, 8].map((element) {
                return Column(
                  children: [
                    10.verticalSpacing,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomShimmer(
                            child: Container(
                          height: 16,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(17.5)),
                        )),
                        CustomShimmer(
                            child: Container(
                          height: 16,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(17.5)),
                        )),
                      ],
                    ),
                    10.verticalSpacing,
                    CustomShimmer(
                        child: Container(
                      height: 1,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    )),
                  ],
                );
              }),

              addVerticalSpacing(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomShimmer(
                      child: Container(
                    height: 45,
                    width: 45.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(17.5)),
                  )),
                  CustomShimmer(
                      child: Container(
                    height: 45,
                    width: 45.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(17.5)),
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
