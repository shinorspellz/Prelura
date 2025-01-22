import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/res/utils.dart';

import '../../res/colors.dart';

class EmptyScreenPlaceholder extends ConsumerWidget {
  const EmptyScreenPlaceholder({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
        child: Text(text,
            style: context.theme.textTheme.bodyMedium?.copyWith(
                fontSize: getDefaultSize(size: 16),
                color: PreluraColors.grey,
                fontWeight: FontWeight.w600)));
  }
}
