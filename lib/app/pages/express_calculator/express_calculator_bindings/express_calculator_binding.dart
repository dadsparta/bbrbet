import 'package:bbrbet/app/pages/express_calculator/express_calculator_controllers/express_calculator_controller.dart';
import 'package:get/get.dart';

class ExpressCalculatorBinding extends Binding{
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut(() => ExpressCalculatorController())
    ];
  }

}