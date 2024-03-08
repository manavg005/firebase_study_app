import 'package:flutter/material.dart';
import 'package:flutter_study_app/controllers/zoom_drawer_controller.dart';
import 'package:flutter_study_app/theme/app_colors.dart';
import 'package:flutter_study_app/theme/ui_parameter.dart';
import 'package:get/get.dart';

class MenuScreen extends GetView<MyZoomDrawerController> {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: UIParameter.mobileScreenPadding,
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: mainGradient(),
      ),
      child: Theme(
          data: ThemeData(
              textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                      foregroundColor: onSurfaceTextColor))),
          child: SafeArea(
              child: Stack(
            children: [
              Positioned(
                  top: 0,
                  right: 0,
                  child: BackButton(
                    onPressed: () {
                      controller.toggleDrawer();
                    },
                    color: Colors.white,
                  )),
              Column(
                children: [
                  // Text("Manav"),
                  Expanded(
                    child: Obx(() => controller.user.value == null
                        ? const SizedBox()
                        : Text(
                            controller.user.value?.displayName ?? "",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: onSurfaceTextColor),
                          )),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  _DrawerButton(
                      icon: Icons.web,
                      label: "website",
                      onPressed: () => controller.website()),
                  _DrawerButton(
                      icon: Icons.facebook,
                      label: "facebook",
                      onPressed: () => controller.website()),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: _DrawerButton(
                        icon: Icons.mail,
                        label: "email",
                        onPressed: () => controller.email()),
                  ),
                  Spacer(
                    flex: 4,
                  ),
                  _DrawerButton(
                      icon: Icons.logout,
                      label: "logout",
                      onPressed: () => controller.signOut()),
                ],
              ),
            ],
          ))),
    );
  }
}

class _DrawerButton extends StatelessWidget {
  const _DrawerButton(
      {super.key,
      required this.icon,
      required this.label,
      required this.onPressed});
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 15,
        ),
        label: Text(label));
  }
}
