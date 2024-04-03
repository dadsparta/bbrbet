import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultTextfield extends StatelessWidget {
  final Rx<TextEditingController> controller;

  const ResultTextfield(
      {super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: false,
      controller: controller.value,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      style: GoogleFonts.sourceCodePro(color: Colors.black, fontSize: 16),
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