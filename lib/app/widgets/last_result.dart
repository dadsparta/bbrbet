import 'package:bbrbet/core/theme/app_colors.dart';
import 'package:bbrbet/core/theme/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LastResultWidget extends StatefulWidget {
  final String totalAM;
  final String percentage;
  final String lastTest;
  const LastResultWidget({super.key, required this.totalAM, required this.percentage, required this.lastTest});

  @override
  State<LastResultWidget> createState() => _LastResultWidgetState();
}

class _LastResultWidgetState extends State<LastResultWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                AppTexts.typeOfCalc('Type:', Colors.black),
                SizedBox(
                  width: 8,
                ),
                AppTexts.typeOfCalc(widget.lastTest, AppColors.greyColor)
              ],
            ),
            SizedBox(
              height: 5,
            ),
            AppTexts.lastResult('LAST RESULTS'),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.purpleColor),
                    child: AppTexts.smallRes('Total AM: ' + widget.totalAM, Colors.white),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.orangeColor),
                    child: AppTexts.smallRes('% of Bank: ' + widget.percentage, Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
    );
  }
}
