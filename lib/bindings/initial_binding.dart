import 'package:flutter_study_app/controllers/auth_controller.dart';
import 'package:get/get.dart';

import '../services/firebase_storage_service.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController(), permanent: true);
    Get.put(FirebaseStorageService());
  }
}
