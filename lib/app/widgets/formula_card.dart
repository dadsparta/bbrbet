import 'package:bbrbet/app/routes/app_pages.dart';
import 'package:bbrbet/app/widgets/go_to_button.dart';
import 'package:bbrbet/core/theme/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormulaCard extends StatefulWidget {
  final String title;
  final String description;
  final Function function;
  final int index;
  final Color color;

  const FormulaCard(
      {super.key,
      required this.title,
      required this.description,
      required this.function,
      required this.index,
      required this.color});

  @override
  State<FormulaCard> createState() => _FormulaCardState();
}

class _FormulaCardState extends State<FormulaCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width * 0.9,
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: widget.color,
      ),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Text(widget.index.toString()),
              ),
              SizedBox(
                width: 8,
              ),
              AppTexts.form(widget.title)
            ],
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 100,
            child: AppTexts.formDescCard(widget.description),
          ),
          GoToButton(function: widget.function(), text: 'TRY'),
        ],
      ),
    );
  }
}