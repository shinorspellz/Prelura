import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../res/colors.dart';
import '../../../../controller/product/brands_provider.dart';
import '../../../shimmers/grid_shimmer.dart';

class UserPopularBrand extends ConsumerWidget {
  const UserPopularBrand({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...ref.watch(popularBrandsProvider).maybeWhen(
              orElse: () {
                return List.generate(
                    10,
                    (_) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: ShimmerBox(
                            height: 28,
                            width: 100,
                            radius: 5,
                          ),
                        ));
              },
              data: (data) => data.sublist(6).map(
                    (brand) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          decoration: BoxDecoration(
                              color: PreluraColors.activeColor.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                  color: PreluraColors.activeColor, width: 1)),
                          child: Text(
                            brand.name,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: PreluraColors.white,
                                    fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ))
        ],
      ),
    );
  }
}
