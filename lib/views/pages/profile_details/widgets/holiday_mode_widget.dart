import 'package:flutter/material.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/res/images.dart';
import 'package:prelura_app/res/render_svg.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/widgets/gap.dart';

import '../../../../model/user/user_model.dart';
import '../../../../res/colors.dart';

class HolidayModeWidget extends StatelessWidget {
  const HolidayModeWidget(
      {super.key, this.height, this.isLoggedInUser = false});

  final double? height;
  final bool isLoggedInUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(),
      child: Column(
        // mainAxisAlignment: MainAxisAlignme,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height * 0.5,
            ),
            alignment: Alignment.center,
            child: Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RenderSvg(
                      svgPath: PreluraIcons.holiday_svg,
                      color: PreluraColors.grey,
                      svgHeight: 80,
                      svgWidth: 80,
                    ),
                    24.verticalSpacing,
                    Text(
                      isLoggedInUser
                          ? "Vacation mode turned on"
                          : "This member is on vacation",
                      style: context.theme.textTheme.bodyMedium?.copyWith(
                          fontSize: getDefaultSize(size: 16),
                          color: PreluraColors.grey,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Text(
            "More about vacation mode",
            style: context.theme.textTheme.bodySmall?.copyWith(
                fontSize: getDefaultSize(size: 10),
                color: PreluraColors.grey,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w400),
          ),
          20.verticalSpacing
        ],
      ),
    );
  }
}
