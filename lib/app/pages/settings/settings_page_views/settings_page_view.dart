import 'package:bbrbet/app/pages/settings/settings_page_controllers/setting_page_controller.dart';
import 'package:bbrbet/app/widgets/go_to_button.dart';
import 'package:bbrbet/core/theme/app_colors.dart';
import 'package:bbrbet/core/theme/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPageView extends GetView<SettingsPageController> {
  SettingsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          GoToButton(function: (){},text: 'PRIVACY POLICY',),
          GoToButton(function: (){},text: 'TERMS OF USE',),
          GoToButton(function: (){},text: 'RATE APP',),
          GoToButton(function: (){},text: 'TECHNICAL SUPPORT',),
        ],
      ),
    );
  }
}
