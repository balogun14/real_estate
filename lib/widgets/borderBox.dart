// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ui_design_one/utils/constants.dart';

class BorderBox extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double width, height;

  const BorderBox(
      {super.key,
      required this.padding,
      required this.width,
      required this.height,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: colorGrey.withAlpha(40),
          width: 2,
        ),
      ),
      padding: padding,
      child: child,
    );
  }
}
