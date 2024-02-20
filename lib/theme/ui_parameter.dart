import 'package:flutter/material.dart';

class UIParameter {
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
