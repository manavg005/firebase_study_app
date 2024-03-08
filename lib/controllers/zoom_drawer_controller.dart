import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_study_app/controllers/auth_controller.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class MyZoomDrawerController extends GetxController {
  final zoomDrawerController = ZoomDrawerController();
  Rxn<User?> user = Rxn();

  @override
  void onReady() {
    user.value = Get.find<AuthController>().getUser();
    print(user.value);
    super.onReady();
  }

  void toggleDrawer() {
    zoomDrawerController.toggle?.call();
    update();
  }

  void email() {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'info@yopmail.com',
    );
    _launch(emailUri.toString());
  }

  void signIn() {}

  void signOut() {
    Get.find<AuthController>().signOut();
  }

  void website() {
    _launch('https://flutter.dev');
  }

  Future<void> _launch(String url) async {
    if (await launch(url)) {
      throw "could not launch";
    }
  }
}
