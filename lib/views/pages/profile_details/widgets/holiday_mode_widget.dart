import 'package:flutter/material.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/res/images.dart';
import 'package:prelura_app/res/render_svg.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../../../res/colors.dart';

class HolidayModeWidget extends StatelessWidget {
  const HolidayModeWidget({super.key, this.height});

  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: height ?? MediaQuery.of(context).size.height * 0.45,
      ),
      alignment: Alignment.center,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RenderSvg(
              svgPath: PreluraIcons.holiday_svg,
              color: PreluraColors.grey,
              svgHeight: 60,
              svgWidth: 60,
            ),
            12.verticalSpacing,
            Text(
              "No Products",
              style: context.theme.textTheme.bodyMedium?.copyWith(
                  fontSize: getDefaultSize(size: 16),
                  color: PreluraColors.grey,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
