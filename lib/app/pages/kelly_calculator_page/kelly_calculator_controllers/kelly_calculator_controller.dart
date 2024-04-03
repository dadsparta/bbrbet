import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class KellyCalculatorController extends GetxController {
  RxBool isFieldsNotEmpty = false.obs;
  RxBool isNotCalculated = true.obs;
  Rx<TextEditingController> kefBKController = TextEditingController().obs;
  Rx<TextEditingController> bettingOddsController = TextEditingController().obs;
  Rx<TextEditingController> bankrollAmountController =
      TextEditingController().obs;
  Rx<TextEditingController> cashOutController = TextEditingController().obs;
  Rx<TextEditingController> percentageController = TextEditingController().obs;

  void checkOnEmptyFields() {
    if (kefBKController.value.text != '' &&
        bettingOddsController.value.text != '' &&
        bankrollAmountController.value.text != '') {
      isFieldsNotEmpty.value = true;
    } else {
      isFieldsNotEmpty.value = false;
    }
    update();
  }

  void calculate() {
    isNotCalculated.value = false;
    cashOutController.value.text = (((int.parse(kefBKController.value.text) *
                        int.parse(bettingOddsController.value.text)) /
                    1) /
                int.parse(kefBKController.value.text) -
            1)
        .toString();

    percentageController.value.text = (((int.parse(kefBKController.value.text) *
                            int.parse(bettingOddsController.value.text)) /
                        2.5) /
                    int.parse(kefBKController.value.text) -
                1)
            .toString() +
        '%';
    update();
  }

  void returnData() {
    print('Returning data...');
      Get.back(result: [
        cashOutController.value.text,
        percentageController.value.text
      ]);
  }
}
