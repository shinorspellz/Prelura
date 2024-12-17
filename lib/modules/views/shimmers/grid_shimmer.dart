import 'package:flutter/material.dart';
import 'package:prelura_app/modules/views/shimmers/custom_shimmer.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

Widget GridShimmer() {
  return GridView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.50,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return const ProductShimmer();
      });
}

class ProductShimmer extends StatelessWidget {
  const ProductShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomShimmer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 27.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            height: 16,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            height: 16,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            height: 16,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 16,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}

class ShimmerBox extends StatelessWidget {
  const ShimmerBox(
      {super.key, required this.height, required this.width, this.radius});
  final double height;
  final double width;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return CustomShimmer(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(radius ?? 10),
        ),
      ),
    );
  }
}
