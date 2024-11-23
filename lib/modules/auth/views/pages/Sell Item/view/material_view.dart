import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../res/colors.dart';
import '../provider/material_provider.dart';

@RoutePage()
class MaterialSelectionScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final materialState = ref.watch(materialProvider);
    final notifier = ref.read(materialProvider.notifier);

    return Scaffold(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.back(),
        ),
        centerTitle: true,
        title: Text("Material (recommended)",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 18,
                )),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView(
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
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: materialState.selectedMaterials.isNotEmpty
                  ? () {
                      // Pass the data back or proceed to the next screen
                      Navigator.pop(context);
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding: EdgeInsets.symmetric(vertical: 16),
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
          ],
        ),
      ),
    );
  }
}
