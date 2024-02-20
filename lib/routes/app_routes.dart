import 'package:flutter_study_app/screens/introduction/introduction.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../screens/splash/splash_screen.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(
          name: "/",
          page: () => SplashScreen(),
        ),
        GetPage(
          name: "/introduction",
          page: () => AppIntroduction(),
        ),
      ];
}
