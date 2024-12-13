import 'package:flutter/material.dart';
import 'package:prelura_app/modules/views/shimmers/grid_shimmer.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

Widget MyFavoriteShimmer() {
  return SingleChildScrollView(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      children: [
        Shimmer.fromColors(
          baseColor: Colors.grey[200]!,
          highlightColor: Colors.grey[300]!,
          child: Container(
            height: 38,
            width: 100.w,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        GridShimmer()
      ],
    ),
  );
}
