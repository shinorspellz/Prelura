import 'package:flutter/material.dart';
import 'package:prelura_app/model/product/product_model.dart';
import 'package:prelura_app/shared/mock_data.dart';
import 'package:prelura_app/views/shimmers/grid_view_animation.dart';
import 'package:prelura_app/views/widgets/card.dart';
import 'package:skeletonizer/skeletonizer.dart';

typedef RefreshCallback = Future<void> Function();

class DisplaySection extends StatelessWidget {
  const DisplaySection({
    super.key,
    this.products,
    this.onRefresh,
    this.isScrollable = false,
    this.controller,
    this.isInProduct = true,
    this.isSelectable = true,
  });
  final List<ProductModel>? products;
  final RefreshCallback? onRefresh;
  final bool isScrollable;
  final ScrollController? controller;
  final bool isInProduct;
  final bool isSelectable;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // Dynamically adjust grid column count or aspect ratio based on constraints
        final crossAxisCount = constraints.maxWidth > 600 ? 3 : 2;
        if (products == null) {
          return Skeletonizer(
            enabled: true,
            child: GridView.builder(
                padding: const EdgeInsets.all(10),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.54),
                itemCount: mockData.length,
                itemBuilder: (context, index) {
                  return DisplayCard(itemData: mockData[index]);
                }),
          );
        }
        return RefreshIndicator(
          onRefresh: onRefresh ?? () async {},
          child: GridView.builder(
            shrinkWrap: true,
            physics: isScrollable
                ? const BouncingScrollPhysics()
                : const NeverScrollableScrollPhysics(),
            controller: controller,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.52,
            ),
            itemCount: products!.length,
            itemBuilder: (context, index) {
              return AnimatedGridItem(
                child: ProductCard(
                  product: products![index],
                  isSimilar: isInProduct,
                  isSelectable: isSelectable,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
