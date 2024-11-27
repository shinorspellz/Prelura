import 'package:flutter/material.dart';

/// Custom transition for sliding animation
// PageRouteBuilder<T> customSlideTransition<T>({
//   required Widget page,
//   required Offset beginOffset, // Starting position of the animation
//   required Duration duration,
//   Curve curve = Curves.easeInOut,
// }) {
//   return PageRouteBuilder<T>(
//     pageBuilder: (context, animation, secondaryAnimation) => page,
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       final offsetAnimation = Tween<Offset>(
//         begin: beginOffset,
//         end: Offset.zero,
//       ).animate(CurvedAnimation(parent: animation, curve: curve));
//       return SlideTransition(position: offsetAnimation, child: child);
//     },
//     transitionDuration: duration,
//   );
// }
