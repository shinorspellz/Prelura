import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/material_provider.dart';

@RoutePage()
class MaterialSelectionScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final materialState = ref.watch(materialProvider);
    final notifier = ref.read(materialProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text("Select Material")),
      body: ListView(
        children: notifier.materials.map((entry) {
          final value = entry;
          final isSelected = notifier.isSelected(value);

          return CheckboxListTile(
            activeColor: Colors.teal,
            checkColor: Colors.black,
            tileColor: Colors.grey[900],
            title: Text(
              value,
              style: TextStyle(color: Colors.white),
            ),
            value: isSelected,
            onChanged: (isChecked) {
              if (isChecked == true || isSelected) {
                notifier.toggleMaterial(value);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "You can only select up to 2 colours.",
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
          );
        }).toList(),
      ),
    );
  }
}
