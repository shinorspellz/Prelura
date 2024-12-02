import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../res/colors.dart';

class Ratings extends StatelessWidget {
  const Ratings({super.key, this.count = 5, this.size = 15});
  final int count;
  final double size;
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: count,
      itemSize: size,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: PreluraColors.starColor,
        size: 1,
      ),
      unratedColor: Colors.grey.shade300,
      onRatingUpdate: (double value) {},
    );
  }
}
