import 'package:bbrbet/app/routes/app_pages.dart';
import 'package:bbrbet/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "MyFamily",
      getPages: AppPages.routes,
      defaultTransition: Transition.cupertino,
      initialRoute: Routes.initialRoute,
      builder: (context, page) => GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(
            FocusNode(),
          );
        },
        child: page ?? const SizedBox.shrink(),
      ),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: AppColors.firstColor),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

