import 'package:flutter/material.dart';

import 'app_theme_data_mixin.dart';

const Color primaryColorDarkDark = Color(0xFF2e3c62);
const Color primaryColorDark = Color(0xFF99ace1);

const Color mainTextColor = Colors.white30;

class DarkTheme with SubThemeData {
  buildDarkTheme() {
    final ThemeData systemDarkTheme = ThemeData.dark();
    return systemDarkTheme.copyWith(
      iconTheme: getIconTheme(),
      textTheme: getTextTheme().apply(
        bodyColor: mainTextColor,
        displayColor: mainTextColor,
      ),
    );
  }
}
