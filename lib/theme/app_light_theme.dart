import 'package:flutter/material.dart';
import 'package:flutter_study_app/theme/app_theme_data_mixin.dart';

const Color primaryColorLightLight = Color(0xFF3ac3cb);
const Color primaryColorLight = Color(0xFFf85187);
const Color mainTextColor = Color.fromARGB(255, 40, 40, 40);

class LightTheme with SubThemeData {
  buildLightTHeme() {
    final ThemeData systemLightTheme = ThemeData.light();
    return systemLightTheme.copyWith(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      iconTheme: getIconTheme(),
      textTheme: getTextTheme().apply(
        bodyColor: mainTextColor,
        displayColor: mainTextColor,
      ),
    );
  }
}
