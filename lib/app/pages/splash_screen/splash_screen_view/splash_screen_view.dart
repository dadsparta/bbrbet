import 'package:bbrbet/app/pages/splash_screen/splash_screen_controller/splash_screen_controller.dart';
import 'package:bbrbet/app/widgets/go_to_button.dart';
import 'package:bbrbet/core/theme/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/splashbackground.png'),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: ListView(
            children: [
              AppTexts.splashScreenTitle('PERFECT BET CONTROLLER'),
              AppTexts.splashScreenDescription('& CALCULATOR'),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    child: SizedBox(
                      height: 550,
                      child: Image.asset('assets/socker.png'),
                    ),
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: GoToButton(
                          function: () {
                            controller.goToInitialPage();
                          },
                          text: 'START'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
