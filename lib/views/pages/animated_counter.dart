import 'package:flutter/material.dart';
import 'package:prelura_app/core/utils/currency_format.dart';
import 'package:prelura_app/res/utils.dart';

class AnimatedCount extends ImplicitlyAnimatedWidget {
  final num count;
  final bool formatToCurrency;
  final TextStyle? style;

  const AnimatedCount({
    super.key,
    required this.count,
    required super.duration,
    this.formatToCurrency = false,
    this.style,
    super.curve,
  });

  @override
  ImplicitlyAnimatedWidgetState<ImplicitlyAnimatedWidget> createState() =>
      _AnimatedCountState();
}

class _AnimatedCountState extends AnimatedWidgetBaseState<AnimatedCount> {
  IntTween? _count;

  @override
  Widget build(BuildContext context) {
    if (widget.formatToCurrency) {
      return Text(
        (_count?.evaluate(animation) ?? '0').toString().formatToPounds,
        style: widget.style,
      );
    }

    return Text(
      formatDynamicString((_count?.evaluate(animation) ?? '0').toString()),
      style: widget.style,
    );
  }

  @override
  void forEachTween(visitor) {
    _count = visitor(_count, widget.count, (value) => IntTween(begin: value))
        as IntTween;
  }
}
