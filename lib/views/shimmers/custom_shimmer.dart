import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmer extends StatelessWidget {
  final Widget child;

  const CustomShimmer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Shimmer.fromColors(
      baseColor: isDarkMode ? Colors.grey[600]! : Colors.grey[300]!,
      highlightColor: isDarkMode ? Colors.grey[700]! : Colors.grey[50]!,
      child: child,
    );
  }
}
