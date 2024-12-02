import 'package:flutter/material.dart';

extension Alert on BuildContext {
  alert(String message) => ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(content: Text(message)),
      );
}
