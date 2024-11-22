import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/material_provider.dart';

@RoutePage()
class MaterialSelectionScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final materials = ref.watch(materialProvider.notifier).materials;

    return Scaffold(
      appBar: AppBar(title: Text("Select Material")),
      body: ListView.builder(
        itemCount: materials.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(materials[index]),
            onTap: () async {
              ref
                  .read(materialProvider.notifier)
                  .selectMaterial(materials[index]);
              // await SharedPreferencesHelper.saveSelection("selectedMaterial", materials[index]);
              Navigator.pop(context);
            },
          );
        },
      ),
    );
  }
}
