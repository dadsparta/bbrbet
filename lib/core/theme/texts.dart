import 'package:bbrbet/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTexts extends Text {
  AppTexts(
    String text, {
    super.key,
    required double fontSize,
    required FontWeight fontWeight,
    required Color color,
    required TextAlign textAlign,
    required int maxLines,
  }) : super(
          text,
          style: GoogleFonts.sourceCodePro(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
            decoration: TextDecoration.none,
          ),
          maxLines: maxLines,
          textAlign: textAlign,
        );

  factory AppTexts.title(
    String text, {
    Color color = AppColors.textColor,
  }) =>
      AppTexts(
        text,
        fontSize: 32,
        fontWeight: FontWeight.w400,
        color: color,
        textAlign: TextAlign.center,
        maxLines: 1,
      );

  factory AppTexts.name(
    String text, {
    Color color = AppColors.textColor,
  }) =>
      AppTexts(
        text,
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: color,
        textAlign: TextAlign.left,
        maxLines: 1,
      );

  factory AppTexts.settingsButton(
    String text, {
    Color color = AppColors.settingButtonTextColor,
  }) =>
      AppTexts(
        text,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: color,
        textAlign: TextAlign.left,
        maxLines: 1,
      );

  factory AppTexts.typeOfCalcText(String text, Color color) => AppTexts(
        text,
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: color,
        textAlign: TextAlign.left,
        maxLines: 1,
      );
  factory AppTexts.smallResText(String text, Color color) => AppTexts(
    text,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: color,
    textAlign: TextAlign.left,
    maxLines: 1,
  );

  factory AppTexts.lastResult(
    String text, {
    Color color = AppColors.activeIconColor,
  }) =>
      AppTexts(
        text,
        fontSize: 38,
        fontWeight: FontWeight.w600,
        color: color,
        textAlign: TextAlign.center,
        maxLines: 1,
      );
}
