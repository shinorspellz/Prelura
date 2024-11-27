import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

class GestureNavigator extends StatelessWidget {
  const GestureNavigator({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        // Detect swipe direction (right to left or left to right)
        if (details.primaryDelta! < 0) {
          // Swipe from right to left (negative delta indicates right to left swipe)
          context.router.popForced();
        }
      },
      child: child,
    );
  }
}
