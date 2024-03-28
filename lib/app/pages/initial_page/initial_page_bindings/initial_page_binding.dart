import 'package:bbrbet/app/pages/calculators/calculators_page_view/calculator_page_view.dart';
import 'package:bbrbet/app/pages/initial_page/initial_page_controllers/initial_page_controller.dart';
import 'package:bbrbet/app/pages/main/controllers/main_controller.dart';
import 'package:bbrbet/app/pages/settings/settings_page_controllers/setting_page_controller.dart';
import 'package:get/get.dart';

class InitialPageBinding extends Binding{
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut(() => InitialPageController()),
      Bind.lazyPut(() => SettingsPageController()),
      Bind.lazyPut(() => CalculatorsPageView()),
      Bind.lazyPut(() => MainController()),
    ];
  }

}