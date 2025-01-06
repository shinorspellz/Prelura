import 'package:flutter/material.dart';
import 'package:prelura_app/views/widgets/gap.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

import 'custom_shimmer.dart';

Widget CategoryShimmer({int? length}) {
  return ListView.separated(
    padding: EdgeInsets.only(top: 16),
    shrinkWrap: true,
    physics: const BouncingScrollPhysics(),
    itemCount: length ?? 18,
    itemBuilder: (context, index) {
      return CustomShimmer(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            addHorizontalSpacing(16),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            addHorizontalSpacing(10),
            Expanded(
              child: Container(
                height: 5.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            addHorizontalSpacing(20),
            ClipRRect(
                borderRadius: BorderRadius.circular(2.5.h),
                child: Container(
                  height: 5.h,
                  width: 5.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                )),
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
