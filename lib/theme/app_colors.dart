import 'package:flutter/material.dart';
import 'package:flutter_study_app/theme/app_light_theme.dart';
import 'package:flutter_study_app/theme/ui_parameter.dart';

import 'app_dark_theme.dart';

const Color onSurfaceTextColor = Colors.white;

const mainGradientLight = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [primaryColorLightLight, primaryColorLight],
);

const mainGradientDark = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [primaryColorDarkDark, primaryColorDark],
);

LinearGradient mainGradient() =>
    UIParameter.isDarkMode() ? mainGradientDark : mainGradientLight;

customScaffoldColor() => UIParameter.isDarkMode()
    ? Color(0xFF2e3c62)
    : Color.fromARGB(255, 240, 237, 255);
