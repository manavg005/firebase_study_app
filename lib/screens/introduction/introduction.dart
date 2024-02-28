import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_study_app/theme/app_colors.dart';
import 'package:flutter_study_app/widgets/app_circle_button.dart';
import 'package:get/get.dart';

class AppIntroduction extends StatelessWidget {
  const AppIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: mainGradientLight),
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * .2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                size: 60,
                color: Colors.yellow,
              ),
              Text(
                "This is a study appp dk js dhbv bcjhvcb jdbsns dbsndbsn bdb bdhs  dbsb dsbds b hbd",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: onSurfaceTextColor,
                    fontWeight: FontWeight.bold),
              ),
              CircleButton(
                onTap: () {
                  log("message");
                  Get.toNamed('/home');
                },
                child: const Icon(
                  Icons.arrow_forward,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
