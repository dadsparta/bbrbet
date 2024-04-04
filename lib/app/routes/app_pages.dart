import 'package:bbrbet/app/pages/express_calculator/express_calculator_bindings/express_calculator_binding.dart';
import 'package:bbrbet/app/pages/express_calculator/express_calculator_views/express_calculator_view.dart';
import 'package:bbrbet/app/pages/initial_page/initial_page_bindings/initial_page_binding.dart';
import 'package:bbrbet/app/pages/initial_page/initial_page_views/initial_page_views.dart';
import 'package:bbrbet/app/pages/kelly_calculator/kelly_calculator_binding/kelly_calcutalor_binding.dart';
import 'package:bbrbet/app/pages/kelly_calculator/kelly_calculator_views/kelly_calculator_view.dart';
import 'package:bbrbet/app/pages/main/views/main_view.dart';
import 'package:bbrbet/app/pages/settings/settings_page_views/settings_page_view.dart';
import 'package:bbrbet/app/pages/splash_screen/splash_screen_bindings/splash_screen_binding.dart';
import 'package:bbrbet/app/pages/splash_screen/splash_screen_view/splash_screen_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

part 'app_route.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.main,
      page: () => const MainView(),
      binding: InitialPageBinding(),
    ),
    GetPage(
      name: Routes.initialRoute,
      page: () => InitialPageView(),
      binding: InitialPageBinding(),
    ),
    GetPage(
        name: Routes.settings,
        page: () => SettingsPageView(),
        binding: InitialPageBinding()),
    GetPage(
        name: Routes.kellyCalculator,
        page: () => KellyCalculatorView(),
        binding: KellyCalculatorBinding()),
    GetPage(
        name: Routes.splashScreen,
        page: () => SplashScreenView(),
        binding: SplashScreenBinding()),
    GetPage(
        name: Routes.expressCalculator,
        page: () => ExpressCalculatorView(),
        binding: ExpressCalculatorBinding()),
  ];
}
