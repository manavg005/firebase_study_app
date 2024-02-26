import 'package:flutter/material.dart';
import 'package:flutter_study_app/theme/app_light_theme.dart';
import 'package:flutter_study_app/theme/ui_parameter.dart';

import 'app_dark_theme.dart';

const Color onSurfaceTextColor = Colors.white;

const mainGradientLight = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [primaryColorLight, primaryColorLightLight],
);

const mainGradientDark = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [primaryColorDark, primaryColorDarkDark],
);

LinearGradient mainGradient(BuildContext context) =>
    UIParameter.isDarkMode(context) ? mainGradientDark : mainGradientLight;
