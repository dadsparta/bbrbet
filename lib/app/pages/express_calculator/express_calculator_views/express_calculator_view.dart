import 'package:bbrbet/app/pages/express_calculator/express_calculator_controllers/express_calculator_controller.dart';
import 'package:bbrbet/app/widgets/go_to_button.dart';
import 'package:bbrbet/app/widgets/result_textfield.dart';
import 'package:bbrbet/app/widgets/textfield_for_calculators.dart';
import 'package:bbrbet/core/theme/app_colors.dart';
import 'package:bbrbet/core/theme/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpressCalculatorView extends GetView<ExpressCalculatorController> {
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
                    color: AppColors.orangeColor,
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
                        'EXPRESS',
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Visibility(
                  visible: !controller.isSecondPage.value &&
                      !controller.isThirdPage.value,
                  child: Column(
                    children: [
                      CalculatorsTextfield(
                          controller: controller.outcomes, function: () {}),
                      AppTexts.inputDescription('Outcomes (max 10)'),
                      SizedBox(
                        height: 20,
                      ),
                      CalculatorsTextfield(
                          controller: controller.bankrollAmountController,
                          function: controller.checkOnEmptyFields),
                      AppTexts.inputDescription('Bankroll Amount'),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: controller.isSecondPage.value,
                  child: Column(
                    children: [
                      controller.factorsOfWinning(
                        int.parse(controller.outcomes.value.text),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: controller.isThirdPage.value,
                  child: Column(
                    children: [
                      ResultTextfield(controller: controller.possible_winning)
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Visibility(
                    visible: controller.isSecondPage.value,
                    child: GoToButton(
                        function: controller.calculate, text: 'NEXT')),
                Visibility(
                    visible: controller.isThirdPage.value,
                    child: GoToButton(
                        function: controller.returnData, text: 'MENU')),
                Obx(
                  () => controller.isFieldsNotEmpty.value
                      ? Visibility(
                          visible: !controller.isSecondPage.value &&
                              !controller.isThirdPage.value,
                          child: GoToButton(
                              function: controller.showFactors, text: 'NEXT'))
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
