import 'package:bbrbet/core/theme/app_colors.dart';
import 'package:bbrbet/core/theme/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GoToButton extends StatelessWidget {
  final String text;
  final Function function;

  const GoToButton({super.key, required this.function, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,20,0,0),
      child: GestureDetector(
        onTap: () => function(),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.activeIconColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: AppTexts.settingsButton(text),
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
    );
  }
}
