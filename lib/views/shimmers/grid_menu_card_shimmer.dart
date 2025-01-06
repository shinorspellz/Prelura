import 'package:flutter/material.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

import 'custom_shimmer.dart';

Widget GridMenuCardShimmer({int? length}) {
  return ListView.separated(
    padding: EdgeInsets.only(top: 20),
    shrinkWrap: true,
    physics: const BouncingScrollPhysics(),
    itemCount: length ?? 18,
    itemBuilder: (context, index) {
      return CustomShimmer(
        child: Row(
          children: [
            addHorizontalSpacing(16),
            Container(
              height: 6.h,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            addHorizontalSpacing(10),
            Expanded(
              child: Container(
                height: 6.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            addHorizontalSpacing(20),
            Container(
              height: 6.h,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            addHorizontalSpacing(16)
          ],
        ),
      );
    },
    separatorBuilder: (BuildContext context, int index) {
      return SizedBox(
        height: 10,
      );
    },
  );
}
