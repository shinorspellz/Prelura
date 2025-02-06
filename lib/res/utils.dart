import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

void dismissKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}

double getDefaultSize({double? size}) {
  return size ?? 14.0;
}

String capitalizeEachWord(String text) {
  return text
      .split(' ')
      .map((word) =>
          word.isNotEmpty ? '${word[0].toUpperCase()}${word.substring(1)}' : '')
      .join(' ');
}

extension SizedBoxExtension on int {
  Widget get toHeight {
    return SizedBox(
      height: toDouble(),
    );
  }

  Widget get toWidth {
    return SizedBox(
      width: toDouble(),
    );
  }
}

class RegexPatterns {
  static const String poundSign = '\u00A3';
}

class NetworkUtility {
  static Future<String?> fetchUrl(Uri uri,
      {Map<String, String>? headers}) async {
    try {
      final response = await http.get(uri, headers: headers);
      if (response.statusCode == 200) {
        return response.body;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}

class Debounce {
  Timer? _timer;
  final Duration delay;

  Debounce({
    this.delay = const Duration(milliseconds: 900),
  });

  void call(Function() callback) {
    _timer?.cancel();
    _timer = Timer(delay, callback);
  }

  void dispose() {
    _timer?.cancel();
    _timer = null;
  }
}

Future<Position> determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;
  permission = await Geolocator.requestPermission();
  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    permission = await Geolocator.requestPermission();

    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }

  return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
}

String ensureStartsWithHash(String input) {
  if (!input.startsWith('#')) {
    return '#$input';
  }
  return input;
}

String formatDynamicString(String? input) {
  final doubleValue = double.tryParse(input ?? "");
  if (doubleValue == null) {
    return "";
    // throw "Invalid input string: $input";
  }

  // If the number is effectively an integer
  if (doubleValue == doubleValue.toInt()) {
    return doubleValue.toInt().toString();
  }

  // Convert to a string and remove trailing zeros
  String formatted = doubleValue.toStringAsFixed(2); // Arbitrary high precision
  formatted = formatted.replaceAll(RegExp(r'0+$'), ''); // Remove trailing zeros
  formatted =
      formatted.replaceAll(RegExp(r'\.$'), ''); // Remove trailing decimal point

  return double.parse(formatted).toStringAsFixed(2);
}

class DecimalTextInputFormatter extends TextInputFormatter {
  final int decimalRange;

  DecimalTextInputFormatter({required this.decimalRange});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final String text = newValue.text;

    // Allow empty input
    if (text.isEmpty) {
      return newValue;
    }

    // Match a valid decimal number with at most `decimalRange` digits after the decimal point
    final RegExp regex =
        RegExp(r'^\d*\.?\d{0,' + decimalRange.toString() + r'}$');

    if (regex.hasMatch(text)) {
      return newValue;
    }

    // If the new input doesn't match, keep the old value
    return oldValue;
  }
}

class MaxValueTextInputFormatter extends TextInputFormatter {
  final int maxValue;

  MaxValueTextInputFormatter(this.maxValue);

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue;
    }
    final newIntValue = int.tryParse(newValue.text.replaceAll(',', ''));
    if (newIntValue == null || newIntValue > maxValue) {
      return oldValue;
    }
    return newValue;
  }
}

extension StringExtension on String {
  String capitalize() {
    if (isEmpty) return this;
    log('${this[0].toUpperCase()}${substring(1)}');
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String capitalizeAndLowercase() {
    if (isEmpty) return this;
    log('${this[0].toUpperCase()}${substring(1)}');
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  formatCurrency() {
    return replaceFirst(".00", "").replaceFirst(".0", "");
  }
}

String getUserLastSeen(String lastSeen) {
  if (lastSeen.isEmpty) {
    return "moments ago";
  }

  try {
    DateTime lastSeenTime = DateTime.parse(lastSeen).toUtc();
    DateTime now = DateTime.now().toUtc();

    Duration difference = now.difference(lastSeenTime);

    if (difference.inMinutes < 5) {
      log("difference in ${difference.inMinutes}");
      return "moments ago";
    } else if (difference.inMinutes < 60) {
      log("difference in minutes ${difference.inMinutes}");

      return "${difference.inMinutes} minutes ago";
    } else if (difference.inHours < 24) {
      log("difference in hours  ${difference.inHours}");

      return "${difference.inHours} hours ago";
    } else {
      log("difference in days ${difference.inDays}");

      return "${difference.inDays} days ago";
    }
  } catch (e) {
    log("Error parsing date: $e");
    return "moments ago";
  }
}
