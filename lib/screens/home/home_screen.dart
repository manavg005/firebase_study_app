import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study_app/controllers/question_paper/question_paper_controller.dart';
import 'package:flutter_study_app/screens/home/question_cards.dart';
import 'package:flutter_study_app/theme/app_colors.dart';
import 'package:flutter_study_app/theme/app_icons.dart';
import 'package:flutter_study_app/theme/custom_text_styles.dart';
import 'package:flutter_study_app/theme/ui_parameter.dart';
import 'package:flutter_study_app/widgets/content_area.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionPaperController _questionPaperController = Get.find();
    // log("sssssssss${_questionPaperController.allPapers.first.description}");
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: mainGradient()),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(mobileScreenPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      AppIcons.menuLeft,
                      color: onSurfaceTextColor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Icon(
                            AppIcons.peace,
                            color: onSurfaceTextColor,
                          ),
                          Text(
                            "Hello Friend",
                            style:
                                detailText.copyWith(color: onSurfaceTextColor),
                          )
                        ],
                      ),
                    ),
                    Text(
                      "What do you want to learn today?",
                      style: headerText,
                    )
                  ],
                ),
              ),
              Expanded(
                child: ContentArea(
                  addPadding: false,
                  child: Obx(() => ListView.separated(
                      shrinkWrap: true,
                      padding: UIParameter.mobileScreenPadding,
                      itemBuilder: (context, index) {
                        return QuestionCard(
                            model: _questionPaperController.allPapers[index]);
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 20,
                        );
                      },
                      itemCount: _questionPaperController.allPapers.length)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
