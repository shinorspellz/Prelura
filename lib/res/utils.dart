import 'package:flutter/cupertino.dart';

void dismissKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}
