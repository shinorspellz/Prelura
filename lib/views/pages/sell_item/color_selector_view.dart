import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prelura_app/controller/product/product_provider.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button.dart';
import 'package:prelura_app/views/widgets/app_checkbox.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../controller/product/provider/sell_item_provider.dart';
import '../../../res/utils.dart';
import 'color_matcher.dart';

@RoutePage()
class ColorSelectorScreen extends ConsumerStatefulWidget {
  const ColorSelectorScreen({super.key});

  @override
  _ColorSelectorScreenState createState() => _ColorSelectorScreenState();
}

class _ColorSelectorScreenState extends ConsumerState<ColorSelectorScreen> {
  late List<XFile> photos;
  late Map<String, Color> colorOptions;
  bool isExtracting = false;

  Set<Color> generatedColors = {};
  Set<Color> closestColors = {};

  @override
  void initState() {
    super.initState();
    final sellItem = ref.read(sellItemProvider);
    photos = sellItem.images;
    colorOptions = ref.read(colorsProvider);

    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
      if (mounted) {
        _initializeColors();
      }
    });
  }

  void _initializeColors() async {
    await Future.delayed(const Duration(milliseconds: 400));
    List<String> imagePaths = photos.map((file) => file.path).toList();
    await _extractColors(imagePaths);
  }

  Future<void> _extractColors(List<String> imagePaths) async {
    isExtracting = true;
    setState(() {});
    final matcher = ColorMatcher();

    // Extract generated colors
    final generatedColors = await matcher.extractColors(imagePaths);

    // Find base colors for each generated color
    for (var color in generatedColors) {
      final baseColor = matcher.findBaseColor(color);
      closestColors.add(matcher.secondaryColors[baseColor]!);
      print('Generated Color: $color -> Base Color: $baseColor');
    }
    isExtracting = false;
    setState(() {});
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
          if (closestColors.isNotEmpty || isExtracting)
            _buildSuggestedColors(sellItemNotifier),
          _buildAllColorsSection(sellItemNotifier, selectedColors),
          _buildDoneButton(selectedColors),
        ],
      ),
    );
  }

  Widget _buildSuggestedColors(SellItemNotifier notifier) {
    return Skeletonizer(
      enabled: isExtracting,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("Suggested Colours",
                style: Theme.of(context).textTheme.bodyLarge),
          ),
          const SizedBox(height: 8),
          ...closestColors.map((color) {
            final colorName = colorOptions.entries
                .firstWhere((entry) => entry.value == color)
                .key;
            final isSelected = notifier.isColorSelected(colorName);

            return PreluraCheckBox(
              colorName: color,
              title: colorName,
              isChecked: isSelected,
              onChanged: (isChecked) => _handleColorToggle(
                  notifier, colorName, isChecked, isSelected),
            );
          }).toList(),
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
          buildDivider(context),
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

///
///
///
// class ColorSelectorScreen extends ConsumerStatefulWidget {
//   const ColorSelectorScreen({super.key});
//
//   @override
//   _ColorSelectorScreenState createState() => _ColorSelectorScreenState();
// }
//
// class _ColorSelectorScreenState extends ConsumerState<ColorSelectorScreen> {
//   PaletteGenerator? _paletteGenerator;
//   Color? dominantColor;
//   Color? vibrantColor;
//   Color? mutedColor;
//   late List<XFile> photos;
//
//   late Map<String, Color> colorOptions;
//
//   @override
//   void initState() {
//     super.initState();
//     final sellItem = ref.read(sellItemProvider);
//     photos = sellItem.images;
//     colorOptions = ref.read(colorsProvider);
//     WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
//       if (mounted) {
//         _extractColors(photos.map((file) => file.path).toList());
//       }
//     });
//   }
//
//   Set<Color> generatedColors = {};
//   Set<Color> closestColors = {};
//   Future<void> _extractColors(List<String> imagePaths) async {
//     generatedColors = {};
//
//     for (String imagePath in imagePaths) {
//       final paletteGenerator = await PaletteGenerator.fromImageProvider(
//         FileImage(File(imagePath)),
//         size: const Size(
//             200, 200), // Optional: Limit the size for faster processing
//       );
//       if (paletteGenerator.dominantColor != null) {
//         generatedColors.add(paletteGenerator.dominantColor!.color);
//       }
//       if (paletteGenerator.vibrantColor != null) {
//         generatedColors.add(paletteGenerator.vibrantColor!.color);
//       }
//       if (paletteGenerator.mutedColor != null) {
//         generatedColors.add(paletteGenerator.mutedColor!.color);
//       }
//       ;
//     }
//
//     // Find closest colors from colorOptions
//     for (Color generatedColor in generatedColors) {
//       double minDistance = double.infinity;
//       Color? closestColor;
//
//       for (Color colorOption in colorOptions.values) {
//         double distance = ColorUtils.calculateLabDistance(
//           ColorUtils.rgbToLab(generatedColor),
//           ColorUtils.rgbToLab(colorOption),
//         );
//
//         if (distance < minDistance) {
//           minDistance = distance;
//           closestColor = colorOption;
//         }
//       }
//
//       if (closestColor != null) {
//         closestColors.add(closestColor);
//       }
//     }
//
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final selectedColors = ref.watch(sellItemProvider).selectedColors;
//     final sellItemNotifier = ref.read(sellItemProvider.notifier);
//
//     return Scaffold(
//       backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//       appBar: PreluraAppBar(
//         leadingIcon: IconButton(
//           icon:
//               Icon(Icons.arrow_back, color: Theme.of(context).iconTheme.color),
//           onPressed: () => context.router.popForced(),
//         ),
//         centerTitle: true,
//         appbarTitle: "Colours",
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const SizedBox(height: 16),
//           if (photos.isNotEmpty) _buildSuggestedColors(sellItemNotifier),
//           _buildAllColorsSection(sellItemNotifier, selectedColors),
//           _buildDoneButton(selectedColors),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildSuggestedColors(SellItemNotifier notifier) {
//     return Container(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             child: Text("Suggested Colours",
//                 style: Theme.of(context).textTheme.bodyLarge),
//           ),
//           const SizedBox(height: 8),
//           ...closestColors.map((color) {
//             final colorName = colorOptions.entries
//                 .firstWhere((entry) => entry.value == color)
//                 .key;
//             final isSelected = notifier.isColorSelected(colorName);
//
//             return PreluraCheckBox(
//               colorName: color,
//               title: colorName,
//               isChecked: isSelected,
//               onChanged: (isChecked) => _handleColorToggle(
//                   notifier, colorName, isChecked, isSelected),
//             );
//           }).toList(),
//           const SizedBox(height: 16),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildAllColorsSection(
//       SellItemNotifier notifier, List<String> selectedColors) {
//     return Expanded(
//       child: ListView(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             child: Text("All Colours",
//                 style: Theme.of(context).textTheme.bodyLarge),
//           ),
//           const SizedBox(height: 8),
//           const Divider(thickness: 1),
//           ...colorOptions.entries.map((entry) {
//             final colorName = entry.key;
//             final colorValue = entry.value;
//             final isSelected = notifier.isColorSelected(colorName);
//             return PreluraCheckBox(
//               colorName: colorValue,
//               title: colorName,
//               isChecked: isSelected,
//               onChanged: (isChecked) => _handleColorToggle(
//                   notifier, colorName, isChecked, isSelected),
//             );
//           }).toList(),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildDoneButton(List<String> selectedColors) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: ElevatedButton(
//         onPressed:
//             selectedColors.isNotEmpty ? () => context.router.popForced() : null,
//         style: ElevatedButton.styleFrom(
//           backgroundColor: PreluraColors.activeColor,
//           padding: const EdgeInsets.symmetric(vertical: 16),
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//         ),
//         child: Center(
//           child: Text(
//             "Done",
//             style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                   color: PreluraColors.white,
//                   fontSize: getDefaultSize(),
//                 ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   void _handleColorToggle(
//     SellItemNotifier notifier,
//     String colorKey,
//     bool? isChecked,
//     bool isSelected,
//   ) {
//     if (isChecked == true || isSelected) {
//       notifier.toggleColor(colorKey);
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text(
//             "You can only select up to 2 colours.",
//             style: TextStyle(color: Colors.white),
//           ),
//           backgroundColor: Colors.red,
//         ),
//       );
//     }
//   }
// }

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
