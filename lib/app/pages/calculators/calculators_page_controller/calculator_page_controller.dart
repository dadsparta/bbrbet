import 'package:bbrbet/app/routes/app_pages.dart';
import 'package:get/get.dart';

class CalculatorPageController extends GetxController {
  RxString lastResultTotalAM = RxString('0');
  RxString lastResultPersantageOfBank = RxString('0');
  RxString titleOfLast= RxString('');
  RxString resultOfExpress = RxString('LAST RESULT');


  void goToKellyPage() async {
    final result = await Get.toNamed(Routes.kellyCalculator);
    if (result != null && result is List<String> && result.length == 3) {
      lastResultTotalAM.value = result[0];
      lastResultPersantageOfBank.value = result[1];
      titleOfLast.value = result[2];
      update();
    }
  }
  void goToExpressPage() async {
    final result = await Get.toNamed(Routes.expressCalculator);
    if (result != null && result is List<String> && result.length == 2) {
      resultOfExpress.value = result[0];
      titleOfLast.value = result[1];
      update();
    }
  }

}
