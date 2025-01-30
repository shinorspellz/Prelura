import 'package:flutter/material.dart';
import 'package:prelura_app/views/shimmers/custom_shimmer.dart';
import 'package:prelura_app/views/shimmers/grid_shimmer.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:sizer/sizer.dart';

Widget MyFavoriteShimmer() {
  return SingleChildScrollView(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      children: [
        addVerticalSpacing(16),
        CustomShimmer(
          child: Container(
            height: 5.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(
          height: 28,
        ),
        GridShimmer()
      ],
    ),
  );
}
