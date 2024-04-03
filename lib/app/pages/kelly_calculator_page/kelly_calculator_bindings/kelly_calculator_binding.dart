import 'package:bbrbet/app/pages/kelly_calculator_page/kelly_calculator_controllers/kelly_calculator_controller.dart';
import 'package:get/get.dart';

class KellyCalculatorBinding extends Binding{
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut(() => KellyCalculatorController())
    ];
  }

}