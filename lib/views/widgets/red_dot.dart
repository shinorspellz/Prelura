import 'package:flutter/material.dart';

import '../../res/colors.dart';

class RedDot extends StatelessWidget {
  final double size;

  const RedDot({Key? key, this.size = 6.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: PreluraColors.error,
        shape: BoxShape.circle,
      ),
    );
  }
}
