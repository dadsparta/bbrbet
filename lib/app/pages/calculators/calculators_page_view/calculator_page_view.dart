import 'package:bbrbet/app/pages/calculators/calculators_page_controller/calculator_page_controller.dart';
import 'package:bbrbet/core/theme/app_colors.dart';
import 'package:bbrbet/core/theme/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class CalculatorsPageView extends GetView<CalculatorPageController> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        Container(
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Row(
                children: [
                  AppTexts.typeOfCalcText('Type:', Colors.black),
                  SizedBox(
                    width: 8,
                  ),
                  AppTexts.typeOfCalcText(
                      'Kelly Criterion', AppColors.greyColor)
                ],
              ),
              SizedBox(height: 5,),
              AppTexts.lastResult('LAST RESULTS'),
              SizedBox(height: 5,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                    
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.purpleColor),
                      child: AppTexts.smallResText('Total AM: 15.46', Colors.white),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.orangeColor),
                      child: AppTexts.smallResText('% of Bank: 10', Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
