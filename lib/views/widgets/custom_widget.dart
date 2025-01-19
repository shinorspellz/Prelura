import 'dart:ui';

import 'package:flutter/material.dart';

showCustomDialog(
  BuildContext context, {
  required Widget child,
  bool allowDismissal = true,
  Function(bool, dynamic)? onPopAction,
}) async {
  await showGeneralDialog(
    barrierColor: const Color(0xff858585).withOpacity(0.1),
    transitionBuilder: (
      buildContext,
      a1,
      a2,
      widget,
    ) {
      return ScaleTransition(
        scale: CurvedAnimation(
          parent: a1,
          curve: const ElasticOutCurve(
            0.95,
          ),
        ),
        child: CustomDialogParentBox(
          allowDismissal: allowDismissal,
          child: child,
        ),
      );
    },
    transitionDuration: const Duration(
      milliseconds: 600,
    ),
    barrierDismissible: allowDismissal,
    barrierLabel: '',
    context: context,
    useRootNavigator: false,
    pageBuilder: (context, animation1, animation2) => Container(),
  );
}

class CustomDialogParentBox extends StatefulWidget {
  final Widget child;
  final bool allowDismissal;

  const CustomDialogParentBox({
    super.key,
    required this.child,
    required this.allowDismissal,
  });

  @override
  State<CustomDialogParentBox> createState() => _CustomDialogParentBoxState();
}

class _CustomDialogParentBoxState extends State<CustomDialogParentBox> {
  bool _isDismissing = false;

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        onTap: () {
          if (widget.allowDismissal && !_isDismissing) {
            setState(() {
              _isDismissing = true;
            });
            Navigator.pop(context);
          }
        },
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: Container(
            color: Colors.transparent,
            height: deviceSize.height,
            width: deviceSize.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                widget.child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
