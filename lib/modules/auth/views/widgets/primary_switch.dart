import 'package:flutter/cupertino.dart';

import '../../../../res/ui_constants.dart';

class PreluraSwitch extends StatelessWidget {
  final bool swicthValue;
  final Function(bool)? onChanged;
  const PreluraSwitch(
      {super.key, required this.swicthValue, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 28,
      // height: 48,
      child: CupertinoSwitch(
        value: swicthValue,
        // activeColor: Theme.of(context).colorScheme.primary,
        activeColor: UIConstants.switchActiveColor(context),
        // backgroundColor:
        //     Theme.of(context).buttonTheme.colorScheme?.secondary,
        onChanged: onChanged,
      ),
    );
  }
}
