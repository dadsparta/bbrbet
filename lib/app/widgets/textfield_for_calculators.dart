import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorsTextfield extends StatelessWidget {
  final Rx<TextEditingController> controller;
  final Function function;

  const CalculatorsTextfield(
      {super.key, required this.controller, required this.function});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (text) {
        function();
      },
      controller: controller.value,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}
