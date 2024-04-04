import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ExpressCalculatorController extends GetxController {
  RxBool isFieldsNotEmpty = false.obs;
  RxBool isNotCalculated = true.obs;
  Rx<TextEditingController> outcomes = TextEditingController().obs;
  Rx<TextEditingController> bankrollAmountController =
      TextEditingController().obs;

  RxString result = ''.obs;

  void checkOnEmptyFields() {
    if (outcomes.value.text != '' &&
        bankrollAmountController.value.text != '') {
      isFieldsNotEmpty.value = true;
    } else {
      isFieldsNotEmpty.value = false;
    }
    update();
  }

  void calculate() {
    // тут должна быть логика для подсчета факторов
  }

  void returnData() {
    print('Returning data...');
    Get.back(result: [result.value, 'Express']);
  }
}
