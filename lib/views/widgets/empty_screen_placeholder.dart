import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/utils/theme.dart';
import 'package:prelura_app/res/utils.dart';
import 'package:prelura_app/views/pages/profile_details/widgets/no_product_widget.dart';

class EmptyScreenPlaceholder extends ConsumerWidget {
  const EmptyScreenPlaceholder({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NoProductWidget();
  }
}
