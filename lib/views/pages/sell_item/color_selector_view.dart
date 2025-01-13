import 'dart:math';
import 'dart:typed_data';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/res/get_dominant_color.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_checkbox.dart';

import '../../../controller/product/provider/sell_item_provider.dart';
import '../../../res/utils.dart';

@RoutePage()
class ColorSelectorScreen extends ConsumerStatefulWidget {
  const ColorSelectorScreen({super.key});

  @override
  _ColorSelectorScreenState createState() => _ColorSelectorScreenState();
}

class _ColorSelectorScreenState extends ConsumerState<ColorSelectorScreen> {
  final int colorsCountToExtract = 30;
  List<String> suggestedColorKeys = [];
  late List<XFile> photos;
  late Map<String, Color> colorOptions;

  @override
  void initState() {
    super.initState();
    final sellItem = ref.read(sellItemProvider);
    photos = sellItem.images;
    colorOptions = ref.read(colorsProvider);
    _extractColors();
  }

  @override
  Widget build(BuildContext context) {
    final selectedColors = ref.watch(sellItemProvider).selectedColors;
    final sellItemNotifier = ref.read(sellItemProvider.notifier);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: PreluraAppBar(
        leadingIcon: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
          onPressed: () => context.router.popForced(),
        ),
        centerTitle: true,
        appbarTitle: "Colours",
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          _buildSuggestedColors(sellItemNotifier),
          _buildAllColorsSection(sellItemNotifier, selectedColors),
          _buildDoneButton(selectedColors),
        ],
      ),
    );
  }

  Future<void> _extractColors() async {
    suggestedColorKeys.clear();
    for (final photo in photos) {
      try {
        final imageBytes = await photo.readAsBytes();
        final extractor = DominantColors(
          bytes: imageBytes,
          dominantColorsCount: colorsCountToExtract,
        );
        final dominantColors = extractor.extractDominantColors();

        for (final color in dominantColors) {
          final closestKey = _findClosestColorKey(color);
          if (closestKey != null && !suggestedColorKeys.contains(closestKey)) {
            suggestedColorKeys.add(closestKey);
          }
        }
      } catch (_) {
        // Handle errors gracefully
      }
    }
    setState(() {});
  }

  String? _findClosestColorKey(Color targetColor) {
    double minDistance = double.infinity;
    String? closestKey;

    final targetLab = ColorUtils.rgbToLab(targetColor);
    colorOptions.forEach((key, value) {
      final distance = ColorUtils.calculateLabDistance(
          targetLab, ColorUtils.rgbToLab(value));
      if (distance < minDistance) {
        minDistance = distance;
        closestKey = key;
      }
    });
    return closestKey;
  }

  Widget _buildSuggestedColors(SellItemNotifier notifier) {
    return suggestedColorKeys.isEmpty
        ? SizedBox.shrink()
        : Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text("Suggested Colours",
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: suggestedColorKeys.take(5).map((colorKey) {
                    final colorValue = colorOptions[colorKey]!;
                    final isSelected = notifier.isColorSelected(colorKey);
                    return PreluraCheckBox(
                      colorName: colorValue,
                      title: colorKey,
                      isChecked: isSelected,
                      onChanged: (isChecked) => _handleColorToggle(
                          notifier, colorKey, isChecked, isSelected),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 16),
              ],
            ),
          );
  }

  Widget _buildAllColorsSection(
      SellItemNotifier notifier, List<String> selectedColors) {
    return Expanded(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("All Colours",
                style: Theme.of(context).textTheme.bodyLarge),
          ),
          const SizedBox(height: 8),
          const Divider(thickness: 2),
          ...colorOptions.entries.map((entry) {
            final colorName = entry.key;
            final colorValue = entry.value;
            final isSelected = notifier.isColorSelected(colorName);
            return PreluraCheckBox(
              colorName: colorValue,
              title: colorName,
              isChecked: isSelected,
              onChanged: (isChecked) => _handleColorToggle(
                  notifier, colorName, isChecked, isSelected),
            );
          }).toList(),
        ],
      ),
    );
  }

  Widget _buildDoneButton(List<String> selectedColors) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed:
            selectedColors.isNotEmpty ? () => context.router.popForced() : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: PreluraColors.activeColor,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Center(
          child: Text(
            "Done",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: PreluraColors.white,
                  fontSize: getDefaultSize(),
                ),
          ),
        ),
      ),
    );
  }

  void _handleColorToggle(
    SellItemNotifier notifier,
    String colorKey,
    bool? isChecked,
    bool isSelected,
  ) {
    if (isChecked == true || isSelected) {
      notifier.toggleColor(colorKey);
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
  }
}

class ColorUtils {
  static List<double> rgbToLab(Color color) {
    final r = _pivotRgb(color.red / 255.0);
    final g = _pivotRgb(color.green / 255.0);
    final bComponent = _pivotRgb(color.blue / 255.0);

    // D65 reference white
    const xRef = 0.95047;
    const yRef = 1.00000;
    const zRef = 1.08883;

    final x = (r * 0.4124564 + g * 0.3575761 + bComponent * 0.1804375) / xRef;
    final y = (r * 0.2126729 + g * 0.7151522 + bComponent * 0.0721750) / yRef;
    final z = (r * 0.0193339 + g * 0.1191920 + bComponent * 0.9503041) / zRef;

    final l = 116.0 * _pivotLab(y) - 16.0;
    final a = 500.0 * (_pivotLab(x) - _pivotLab(y));
    final b = 200.0 * (_pivotLab(y) - _pivotLab(z));

    return [l, a, b];
  }

  static double _pivotRgb(double n) {
    return (n > 0.04045)
        ? pow((n + 0.055) / 1.055, 2.4).toDouble()
        : (n / 12.92);
  }

  static double _pivotLab(double n) {
    return (n > 0.008856)
        ? pow(n, 1.0 / 3.0).toDouble()
        : (7.787 * n + 16.0 / 116.0);
  }

  static double calculateLabDistance(List<double> lab1, List<double> lab2) {
    return sqrt(pow(lab1[0] - lab2[0], 2) +
        pow(lab1[1] - lab2[1], 2) +
        pow(lab1[2] - lab2[2], 2));
  }
}
