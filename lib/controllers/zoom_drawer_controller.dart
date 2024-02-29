import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class MyZoomDrawerController extends GetxController {
  final zoomDrawerController = ZoomDrawerController();

  @override
  void onReady() {
    // TODO: implement onReady
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
    _launch(emailUri);
  }

  void signIn() {}

  void signOut() {}

  void website() {}

  Future<void> _launch(Uri url) async {
    if (await launchUrl(url)) {
      throw "could not launch";
    }
  }
}
