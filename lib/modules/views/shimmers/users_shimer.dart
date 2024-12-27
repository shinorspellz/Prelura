import 'package:flutter/material.dart';
import 'package:prelura_app/modules/views/pages/menu_page.dart';
import 'package:prelura_app/modules/views/shimmers/custom_shimmer.dart';
import 'package:prelura_app/modules/views/shimmers/grid_shimmer.dart';
import 'package:prelura_app/modules/views/widgets/gap.dart';

class UsersShimmer extends StatelessWidget {
  const UsersShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomShimmer(
          child: CircleAvatar(
            radius: 25,
          ),
        ),
        8.horizontalSpacing,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShimmerBox(height: 10, width: 120),
            3.verticalSpacing,
            ShimmerBox(height: 10, width: 50),
          ],
        )
      ],
    );
  }
}