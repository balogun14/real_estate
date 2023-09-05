import 'package:flutter/material.dart';
import 'package:ui_design_one/utils/constants.dart';
import 'package:ui_design_one/utils/widget_functions.dart';

class optionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;
  const optionButton(
      {super.key, required this.text, required this.icon, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(colorDarkBlue),
            splashFactory: InkSplash.splashFactory,
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 20, vertical: 15))),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: colorWhite,
              ),
              addHorizontalSpace(7),
              Text(
                text,
                style: const TextStyle(color: colorWhite, fontSize: 10),
              ),
              addHorizontalSpace(10)
            ]),
      ),
    );
  }
}
