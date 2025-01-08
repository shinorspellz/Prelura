import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/router/app_startup.dart';
import 'package:prelura_app/core/router/router.gr.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../controller/product/brands_provider.dart';
import '../../res/colors.dart';
import '../../res/utils.dart';
import '../shimmers/grid_shimmer.dart';

class PopularBrands extends ConsumerWidget {
  const PopularBrands(
      {super.key, required this.limit, required this.startIndex});
  final int limit;
  final int startIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Popular Brands",
              textAlign: TextAlign.left,
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            6.verticalSpacing,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ...ref.watch(popularBrandsProvider).maybeWhen(
                      orElse: () {
                        return List.generate(
                            10,
                            (_) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6.0),
                                  child: ShimmerBox(
                                    height: 28,
                                    width: 100,
                                    radius: 5,
                                  ),
                                ));
                      },
                      data: (data) => data.sublist(startIndex).take(limit).map(
                            (brand) => GestureDetector(
                              onTap: () => context.pushRoute(
                                  ProductsByBrandRoute(
                                      title: brand.name,
                                      id: (brand.id).toInt())),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 10),
                                margin: EdgeInsets.only(right: 6),
                                decoration: BoxDecoration(
                                    color: PreluraColors.activeColor,
                                    borderRadius: BorderRadius.circular(6)),
                                child: Text(
                                  brand.name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        color: PreluraColors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: getDefaultSize(),
                                      ),
                                ),
                              ),
                            ),
                          ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
