import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class ColorMatcher {
  // Define your fixed list of secondary colors
  final Map<String, Color> secondaryColors = {
    "Black": Colors.black,
    "Brown": Colors.brown,
    "Grey": Colors.grey,
    "White": Colors.white,
    "Beige": const Color(0xFFF5F5DC),
    "Pink": Colors.pink,
    "Purple": Colors.purple,
    "Red": Colors.red,
    "Yellow": Colors.yellow,
    "Blue": Colors.blue,
    "Green": Colors.green,
    "Orange": Colors.orange,
  };

  // Generate colors from image paths using PaletteGenerator
  Future<List<Color>> extractColors(List<String> imagePaths) async {
    List<Color> generatedColors = [];

    for (String imagePath in imagePaths) {
      final paletteGenerator = await PaletteGenerator.fromImageProvider(
        FileImage(File(imagePath)),
        size: const Size(200, 200), // Adjust size for performance
      );

      if (paletteGenerator.dominantColor != null) {
        generatedColors.add(paletteGenerator.dominantColor!.color);
      }
      if (paletteGenerator.vibrantColor != null) {
        generatedColors.add(paletteGenerator.vibrantColor!.color);
      }
      if (paletteGenerator.mutedColor != null) {
        generatedColors.add(paletteGenerator.mutedColor!.color);
      }
    }
    return generatedColors;
  }

  // Find the closest secondary color for a given color
  String findBaseColor(Color color) {
    double minDistance = double.infinity;
    String closestColorName = "";

    for (var entry in secondaryColors.entries) {
      final currentColor = entry.value;
      final distance = _calculateColorDistance(color, currentColor);

      if (distance < minDistance) {
        minDistance = distance;
        closestColorName = entry.key;
      }
    }

    return closestColorName;
  }

  // Calculate the Euclidean distance between two colors in LAB space
  double _calculateColorDistance(Color color1, Color color2) {
    final lab1 = _rgbToLab(color1);
    final lab2 = _rgbToLab(color2);

    return sqrt(pow(lab1[0] - lab2[0], 2) +
        pow(lab1[1] - lab2[1], 2) +
        pow(lab1[2] - lab2[2], 2));
  }

  // Convert RGB to LAB
  List<double> _rgbToLab(Color color) {
    // Conversion logic here
    final r = color.red / 255.0;
    final g = color.green / 255.0;
    final b = color.blue / 255.0;

    // Apply sRGB gamma correction
    final rLinear = r > 0.04045 ? pow((r + 0.055) / 1.055, 2.4) : r / 12.92;
    final gLinear = g > 0.04045 ? pow((g + 0.055) / 1.055, 2.4) : g / 12.92;
    final bLinear = b > 0.04045 ? pow((b + 0.055) / 1.055, 2.4) : b / 12.92;

    // Convert to XYZ space
    final x = (rLinear * 0.4124 + gLinear * 0.3576 + bLinear * 0.1805) * 100;
    final y = (rLinear * 0.2126 + gLinear * 0.7152 + bLinear * 0.0722) * 100;
    final z = (rLinear * 0.0193 + gLinear * 0.1192 + bLinear * 0.9505) * 100;

    // Convert to LAB space
    final xNormalized = x / 95.047;
    final yNormalized = y / 100.0;
    final zNormalized = z / 108.883;

    final xLab = xNormalized > 0.008856
        ? pow(xNormalized, 1 / 3)
        : (7.787 * xNormalized) + (16 / 116);
    final yLab = yNormalized > 0.008856
        ? pow(yNormalized, 1 / 3)
        : (7.787 * yNormalized) + (16 / 116);
    final zLab = zNormalized > 0.008856
        ? pow(zNormalized, 1 / 3)
        : (7.787 * zNormalized) + (16 / 116);

    final l = (116 * yLab) - 16;
    final a = 500 * (xLab - yLab);
    final c = 200 * (yLab - zLab);

    return [l as double, a as double, b];
  }
}
