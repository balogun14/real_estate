// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ui_design_one/widgets/borderBox.dart';
import 'package:ui_design_one/widgets/choice_option.dart';
import 'package:ui_design_one/sample_data.dart';
import 'package:ui_design_one/utils/constants.dart';
import 'package:ui_design_one/utils/widget_functions.dart';
import 'package:ui_design_one/widgets/optionButton.dart';
import 'package:ui_design_one/widgets/real_estate.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    const double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
            width: size.width,
            height: size.height,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BorderBox(
                              padding: EdgeInsets.all(8.0),
                              height: 50,
                              width: 50,
                              child: Icon(
                                Icons.menu,
                                color: colorBlack,
                              )),
                          BorderBox(
                              padding: EdgeInsets.all(8.0),
                              height: 50,
                              width: 50,
                              child: Icon(
                                Icons.settings,
                                color: colorBlack,
                              ))
                        ],
                      ),
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: Text(
                        'City',
                        style: themeData.textTheme.bodyMedium,
                      ),
                    ),
                    Padding(
                      padding: sidePadding,
                      child: Text(
                        'San Francisco',
                        style: themeData.textTheme.displayLarge,
                      ),
                    ),
                    Padding(
                      padding: sidePadding,
                      child: Divider(
                        height: padding,
                        color: colorGrey,
                      ),
                    ),
                    addVerticalSpace(10),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          "<\$220,000",
                          "For Sale",
                          "3-4 Beds",
                          ">1000 sqft"
                        ].map((filter) => ChoiceOption(text: filter)).toList(),
                      ),
                    ),
                    addVerticalSpace(10),
                    Expanded(
                      child: Padding(
                        padding: sidePadding,
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            itemCount: RE_DATA.length,
                            itemBuilder: (context, index) {
                              return RealEstateItem(itemData: RE_DATA[index]);
                            }),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 20,
                  width: size.width,
                  child: Center(
                    child: optionButton(
                      text: 'Map View',
                      icon: Icons.map_rounded,
                      width: size.width * 0.35,
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
