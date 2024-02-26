import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study_app/bindings/initial_binding.dart';
import 'package:flutter_study_app/screens/data_uploader_screen.dart';
import 'package:flutter_study_app/firebase_options.dart';
import 'package:flutter_study_app/routes/app_routes.dart';
import 'package:flutter_study_app/screens/introduction/introduction.dart';
import 'package:flutter_study_app/screens/splash/splash_screen.dart';
import 'package:flutter_study_app/theme/app_dark_theme.dart';
import 'package:flutter_study_app/theme/app_light_theme.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  InitialBinding().dependencies();
  runApp(GetMaterialApp(
    theme: LightTheme().buildLightTHeme(),
    getPages: AppRoutes.routes(),
    // home: DataUploaderScreen(),
    // home: AppIntroduction(),
  ));
}

// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: AppIntroduction(),
//     );
//   }
// }
