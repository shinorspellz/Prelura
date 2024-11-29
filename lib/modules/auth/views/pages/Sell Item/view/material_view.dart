import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_bar.dart';
import 'package:prelura_app/modules/auth/views/widgets/app_checkbox.dart';

import '../../../../../../res/colors.dart';
import '../../../widgets/gesture_navigator.dart';
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
    return GestureNavigationWidget(currentScreenBuilder: (context) {
      return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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

                    return PreluraCheckBox(
                      isChecked: isSelected,
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
                      title: value,
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16, top: 16, bottom: 46),
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
    });
  }
}
