import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/color_selector_provider.dart';
@RoutePage()
class ColorSelectorScreen extends ConsumerWidget {
  const ColorSelectorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch provider state
    final state = ref.watch(colorSelectorProvider);
    final notifier = ref.read(colorSelectorProvider.notifier);

    // Color options
    final colorOptions = {
      "Black": Colors.black,
      "Brown": Colors.brown,
      "Grey": Colors.grey,
      "Beige": Color(0xFFF5F5DC),
      "Pink": Colors.pink,
      "Purple": Colors.purple,
      "Red": Colors.red,
      "Yellow": Colors.yellow,
      "Blue": Colors.blue,
      "Green": Colors.green,
      "Orange": Colors.orange,
    };

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Colours",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text(
              "Choose up to 2 colours",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: colorOptions.entries.map((entry) {
                  final colorName = entry.key;
                  final colorValue = entry.value;
                  final isSelected = notifier.isSelected(colorName);

                  return CheckboxListTile(
                    activeColor: Colors.teal,
                    checkColor: Colors.black,
                    tileColor: Colors.grey[900],
                    title: Text(
                      colorName,
                      style: TextStyle(color: Colors.white),
                    ),
                    secondary: CircleAvatar(
                      backgroundColor: colorValue,
                      radius: 12,
                    ),
                    value: isSelected,
                    onChanged: (isChecked) {
                      if (isChecked == true || isSelected) {
                        notifier.toggleColor(colorName);
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
              onPressed: state.selectedColors.isNotEmpty
                  ? () {
                      // Pass the data back or proceed to the next screen
                      Navigator.pop(context, state.selectedColors);
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
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
