import 'package:flutter/material.dart';
import 'package:ui_design_one/screens/landing_screen.dart';
// import 'dart:ui';
import 'utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design 1',
      theme: ThemeData(
          primaryColor: colorWhite,
          hintColor: colorDarkBlue,
          textTheme: screenWidth < 500 ? textThemeSmall : textThemeDefault,
          fontFamily: "Montserrat"),
      home: const LandingScreen(),
    );
  }
}
