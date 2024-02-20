import 'package:flutter/material.dart';
import 'package:flutter_study_app/theme/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: mainGradient(context)),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/images/app_splash_logo.png',
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
