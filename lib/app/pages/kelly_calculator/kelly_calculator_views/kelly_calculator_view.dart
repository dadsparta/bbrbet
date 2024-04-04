import 'package:bbrbet/app/pages/kelly_calculator/kelly_calculator_controllers/kelly_calculator_controller.dart';
import 'package:bbrbet/app/widgets/go_to_button.dart';
import 'package:bbrbet/app/widgets/result_textfield.dart';
import 'package:bbrbet/app/widgets/textfield_for_calculators.dart';
import 'package:bbrbet/core/theme/app_colors.dart';
import 'package:bbrbet/core/theme/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KellyCalculatorView extends GetView<KellyCalculatorController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: AppColors.firstColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.kellyCriterionColor,
                  ),
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(CupertinoIcons.arrow_down_left),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      AppTexts.form(
                        'KELLY CRITERION FORMULA',
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Visibility(
                  visible: controller.isNotCalculated.value,
                  child: Column(
                    children: [
                      CalculatorsTextfield(
                          controller: controller.kefBKController,
                          function: controller.checkOnEmptyFields),
                      AppTexts.inputDescription(
                          'Your probability of winning. ln %'),
                      SizedBox(
                        height: 20,
                      ),
                      CalculatorsTextfield(
                          controller: controller.bettingOddsController,
                          function: controller.checkOnEmptyFields),
                      AppTexts.inputDescription('Betting odds'),
                      SizedBox(
                        height: 20,
                      ),
                      CalculatorsTextfield(
                          controller: controller.bankrollAmountController,
                          function: controller.checkOnEmptyFields),
                      AppTexts.inputDescription('Bankroll Amount'),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Visibility(
                  visible: !controller.isNotCalculated.value,
                  child: Column(
                    children: [
                      ResultTextfield(controller: controller.cashOutController),
                      AppTexts.inputDescription('Cash out'),
                      SizedBox(
                        height: 20,
                      ),
                      CalculatorsTextfield(
                          controller: controller.percentageController,
                          function: () {}),
                      AppTexts.inputDescription('% of the Bank'),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Visibility(
                    visible: !controller.isNotCalculated.value,
                    child: GoToButton(
                        function: controller.returnData, text: 'MENU')),
                Obx(
                  () => controller.isFieldsNotEmpty.value
                      ? Visibility(
                          visible: controller.isNotCalculated.value,
                          child: GoToButton(
                              function: controller.calculate, text: 'NEXT'))
                      : Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.disabledGoToColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: AppTexts.settingsButton('NEXT'),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      CupertinoIcons.arrow_up_right,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
