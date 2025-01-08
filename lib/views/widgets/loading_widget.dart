import 'package:flutter/material.dart';
import 'package:prelura_app/views/pages/settings/profile_setting_view.dart';
import 'package:prelura_app/views/widgets/gap.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
    this.height = 25,
    this.color,
    this.text,
    this.textStyle,
    this.strokeWidth,
  });
  final double height;
  final Color? color;
  final String? text;
  final TextStyle? textStyle;
  final double? strokeWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: height,
            width: height,
            child: CircularProgressIndicator.adaptive(
              // backgroundColor: color ?? Colors.white,
              strokeWidth: strokeWidth ?? 2.5,
            ),
          ),
          if (text != null) ...[
            5.verticalSpacing,
            Text(
              text!,
              style: textStyle ?? Theme.of(context).textTheme.labelLarge,
            )
          ]
        ],
      ),
    );
  }
}
