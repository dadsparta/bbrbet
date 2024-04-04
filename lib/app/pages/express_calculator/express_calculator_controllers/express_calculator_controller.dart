import 'package:bbrbet/app/widgets/factors_textfield.dart';
import 'package:bbrbet/app/widgets/textfield_for_calculators.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ExpressCalculatorController extends GetxController {
  RxBool isFieldsNotEmpty = false.obs;
  RxBool isNotCalculated = true.obs;
  RxBool isSecondPage = false.obs;
  RxBool isThirdPage = false.obs;

  Rx<TextEditingController> outcomes = TextEditingController(text: '2').obs;
  Rx<TextEditingController> bankrollAmountController =
      TextEditingController().obs;

  Rx<TextEditingController> possible_winning = TextEditingController().obs;

  void checkOnEmptyFields() {
    if (outcomes.value.text != '' &&
        bankrollAmountController.value.text != '') {
      isFieldsNotEmpty.value = true;
    } else {
      isFieldsNotEmpty.value = false;
    }
    update();
  }

  List<Rx<TextEditingController>> controllers = [
    TextEditingController(text: '1').obs,
    TextEditingController(text: '1').obs,
    TextEditingController(text: '1').obs,
    TextEditingController(text: '1').obs,
    TextEditingController(text: '1').obs,
    TextEditingController(text: '1').obs,
    TextEditingController(text: '1').obs,
    TextEditingController(text: '1').obs,
    TextEditingController(text: '1').obs,
    TextEditingController(text: '1').obs,
  ];

  Widget factorsOfWinning(int count) {
    return Wrap(
      spacing: 0, // горизонтальное расстояние между виджетами
      runSpacing: 0, // вертикальное расстояние между виджетами
      children: List.generate(
        count,
            (index) => FractionallySizedBox(
          widthFactor: 0.5, // Занимает половину ширины родителя
          child: FactorsTextfield(
            controller: controllers[index],
            function: () {},
          ),
        ),
      ),
    );
  }



  void showFactors() {
    isSecondPage.value = true;
  }

  void showResult(){
    isSecondPage.value = false;
    isThirdPage.value = true;
  }
  void calculate() {
    possible_winning.value.text = bankrollAmountController.value.text;
    controllers.forEach((controller) {
      possible_winning.value.text =
          (double.parse(possible_winning.value.text) * double.parse(controller.value.text))
              .toString();
    });
    showResult();
  }

  void returnData() {
    Get.back(result: [
      possible_winning.value.text,
      'Express',
    ]);
  }
}
