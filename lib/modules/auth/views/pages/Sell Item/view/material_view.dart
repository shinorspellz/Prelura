import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_bar.dart';

import '../../../../../../res/colors.dart';
import '../provider/material_provider.dart';
import '../provider/sell_item_provider.dart';

@RoutePage()
class MaterialSelectionScreen extends ConsumerWidget {
  const MaterialSelectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final materialState = ref.watch(sellItemProvider).selectedMaterials;
    final notifier = ref.read(sellItemProvider.notifier);
    final List<String> materials = ["Material 1", "Material 2", "Material 3"];
    return Scaffold(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      appBar: PreluraAppBar(
          leadingIcon: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
            onPressed: () => context.router.popForced(),
          ),
          centerTitle: true,
          appbarTitle: "Material (recommended)"),
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: materials.map((entry) {
                  final value = entry;
                  final isSelected = notifier.isMaterialSelected(value);

                  return Column(
                    children: [
                      CheckboxListTile(
                        activeColor: Colors.teal,
                        checkColor: Colors.black,
                        tileColor: Theme.of(context).scaffoldBackgroundColor,
                        title: Text(
                          value,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        value: isSelected,
                        onChanged: (isChecked) {
                          if (isChecked == true || isSelected) {
                            notifier.toggleMaterial(value);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  "You can only select up to 2 colours.",
                                  style: TextStyle(color: Colors.white),
                                ),
                                backgroundColor: Colors.red,
                              ),
                            );
                          }
                        },
                      ),
                      Divider(
                        thickness: 1,
                      )
                    ],
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: materialState.isNotEmpty
                    ? () {
                        // Pass the data back or proceed to the next screen
                        context.router.popForced();
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: PreluraColors.activeColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Done",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: PreluraColors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
