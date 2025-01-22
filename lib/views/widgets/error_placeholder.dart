import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/utils/theme.dart';

import '../../res/colors.dart';
import '../../res/utils.dart';

class ErrorPlaceholder extends ConsumerWidget {
  const ErrorPlaceholder({super.key, required this.error, required this.onTap});
  final String error;
  final Function() onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.all(16),
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.7,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(error,
              style: context.theme.textTheme.bodyMedium?.copyWith(
                  fontSize: getDefaultSize(size: 16),
                  color: PreluraColors.grey,
                  fontWeight: FontWeight.w600)),
          TextButton.icon(
            onPressed: onTap,
            label: const Text('Retry'),
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      )),
    );
  }
}
