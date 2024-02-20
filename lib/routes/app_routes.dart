import 'package:get/get_navigation/src/routes/get_route.dart';

import '../screens/splash/splash_screen.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(
          name: "/",
          page: () => SplashScreen(),
        ),
      ];
}
