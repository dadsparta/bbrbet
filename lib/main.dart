import 'package:bbrbet/app/routes/app_pages.dart';
import 'package:bbrbet/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/data/services/football_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool firstTime = prefs.getBool('first_time') ?? true;
  Get.put(FootballApiService());
  runApp(
    GetMaterialApp(
      getPages: AppPages.routes,
      defaultTransition: Transition.cupertino,
        initialRoute: firstTime ? Routes.splashScreen : Routes.initialRoute,
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

