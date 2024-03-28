import 'package:bbrbet/app/pages/initial_page/initial_page_bindings/initial_page_binding.dart';
import 'package:bbrbet/app/pages/initial_page/initial_page_views/initial_page_views.dart';
import 'package:bbrbet/app/pages/main/views/main_view.dart';
import 'package:bbrbet/app/pages/settings/settings_page_views/settings_page_view.dart';
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
  ];
}
