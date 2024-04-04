import 'package:bbrbet/app/pages/calculators/calculators_page_controller/calculator_page_controller.dart';
import 'package:bbrbet/app/routes/app_pages.dart';
import 'package:bbrbet/app/widgets/formula_card.dart';
import 'package:bbrbet/app/widgets/last_result.dart';
import 'package:bbrbet/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorsPageView extends GetView<CalculatorPageController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          LastResultWidget(
            totalAM: controller.lastResultTotalAM.value,
            percentage: controller.lastResultPersantageOfBank.value,
            lastTest: controller.titleOfLast.value,
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 275,
            width: 200,
            child: ListView(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                FormulaCard(
                  title: 'KELLY CRITERION FORMULA',
                  description:
                      'Using the Kelly Criterion is cool because it maximizes'
                      ' long-term growth by optimizing bet size based on'
                      ' probabilities, enhancing returns while managing risk,'
                      ' making it a powerful tool for investors and gamblers alike.',
                  function: () => controller.goToKellyPage,
                  index: 1,
                  color: AppColors.kellyCriterionColor,
                ),
                SizedBox(
                  width: 8,
                ),
                FormulaCard(
                  title: 'EXPRESS CALCULATOR',
                  description:
                      'An express bet, placed at a bookmaker\'s office,'
                      ' involves multiple events simultaneously.'
                      ' To win, all included bets must succeed;'
                      ' if one bet is refunded, the express still stands.',
                  function: () => controller.goToExpressPage,
                  index: 2,
                  color: AppColors.orangeColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
