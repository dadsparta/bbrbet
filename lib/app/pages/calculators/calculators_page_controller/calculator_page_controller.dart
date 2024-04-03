import 'package:bbrbet/app/routes/app_pages.dart';
import 'package:get/get.dart';

class CalculatorPageController extends GetxController {
  RxString lastResultTotalAM = RxString('');
  RxString lastResultPersantageOfBank = RxString('');


  void goToKellyPage() async {
    final result = await Get.toNamed(Routes.kellyCalculator);
    print('datas:  ');
    if (result != null && result is List<String> && result.length == 2) {
      print('datas:  ' + result[0] +"  " + result[1]);
      lastResultTotalAM.value = result[0];
      lastResultPersantageOfBank.value = result[1];
      update();
    }
  }

}
