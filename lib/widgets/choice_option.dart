import 'package:flutter/material.dart';
import 'package:ui_design_one/utils/constants.dart';
class ChoiceOption extends StatelessWidget {
  final String text;
  const ChoiceOption({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorGrey.withAlpha(25),
      ),
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 30),
      margin: const  EdgeInsets.only(left: 25),
      child: Text(
        text,
        style: themeData.textTheme.headlineSmall,
      ),
    );
  }
}