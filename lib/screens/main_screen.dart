import 'package:flutter/material.dart';
import 'package:ui_design_one/utils/custom_functions.dart';
import 'package:ui_design_one/utils/widget_functions.dart';
import 'package:ui_design_one/widgets/borderBox.dart';

import '../widgets/optionButton.dart';

class MainPage extends StatelessWidget {
  final dynamic data;
  const MainPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    const double padding = 25;
    const sidePadding = EdgeInsets.symmetric(horizontal: padding);
    const scrollPadding = EdgeInsets.symmetric(horizontal: 10);
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  data['image'],
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  child: BorderBox(
                      padding: const EdgeInsets.all(8.0),
                      width: 50,
                      height: 50,
                      child: GestureDetector(
                        child: const Icon(
                          Icons.arrow_back,
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      )),
                ),
                 const Positioned(
                  right: 10,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                    child: BorderBox(
                        padding: EdgeInsets.all(8.0),
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.favorite_border,
                        )),
                  ),
                ),
              ],
            ),
            addVerticalSpace(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: sidePadding,
                      child: Text(
                        formatCurrency(data['amount']),
                        style: themeData.textTheme.displayLarge,
                      ),
                    ),
                    addVerticalSpace(2.5),
                    Padding(
                      padding: const EdgeInsets.only(left: padding),
                      child: Text(
                        data['address'],
                        style: themeData.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: sidePadding,
                  child: BorderBox(
                      padding: const EdgeInsets.all(8.0),
                      width: 130,
                      height: 50,
                      child: Center(
                        child: Text(
                          '20 Hours ago',
                          style: themeData.textTheme.headlineMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )),
                )
              ],
            ),
            addVerticalSpace(20),
            Padding(
              padding: sidePadding,
              child: Text(
                'House information',
                style: themeData.textTheme.displaySmall,
              ),
            ),
            addVerticalSpace(20),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: sidePadding,
                        child: BorderBox(
                            padding: const EdgeInsets.all(8.0),
                            width: 80,
                            height: 80,
                            child: Center(
                                child: Text(
                              data['area'].toString(),
                              overflow: TextOverflow.ellipsis,
                              style: themeData.textTheme.displaySmall,
                            ))),
                      ),
                      addVerticalSpace(10),
                      Text('Square Foot',style: themeData.textTheme.headlineMedium,)
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: scrollPadding,
                        child: BorderBox(
                            padding: const EdgeInsets.all(8.0),
                            width: 80,
                            height: 80,
                            child: Center(
                                child: Text(
                                  data['bedrooms'].toString(),
                                  overflow: TextOverflow.ellipsis,
                                  style: themeData.textTheme.displaySmall,
                                ))),
                      ),
                      addVerticalSpace(10),
                      Text('Bedrooms',style: themeData.textTheme.headlineMedium,)
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: scrollPadding,
                        child: BorderBox(
                            padding: const EdgeInsets.all(8.0),
                            width: 80,
                            height: 80,
                            child: Center(
                                child: Text(
                                  data['bathrooms'].toString(),
                                  overflow: TextOverflow.ellipsis,
                                  style: themeData.textTheme.displaySmall,
                                ))),
                      ),
                      addVerticalSpace(10),
                      Text('Bathrooms',style: themeData.textTheme.headlineMedium,)
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: scrollPadding,
                        child: BorderBox(
                            padding: const EdgeInsets.all(8.0),
                            width: 80,
                            height: 80,
                            child: Center(
                                child: Text(
                                  data['garage'].toString(),
                                  overflow: TextOverflow.ellipsis,
                                  style: themeData.textTheme.displaySmall,
                                ))),
                      ),
                      addVerticalSpace(10),
                      Text('Garage',style: themeData.textTheme.headlineMedium,)
                    ],
                  ),
                ],
              ),
            ),
            addVerticalSpace(30),
            Stack(
           children: [
             Padding(
               padding: sidePadding,
               child: Text(data['description'],style: themeData.textTheme.bodyMedium,),
             ),
             Positioned(
               bottom: 20,
               right: 70,
               width: size.width,
               child: Center(
                 child: optionButton(
                   text: 'Message',
                   icon: Icons.message,
                   width: size.width * 0.35,
                 ),
               ),
             ),
             Positioned(
               bottom: 20,
               left: 80,
               width: size.width,
               child: Center(
                 child: optionButton(
                   text: 'Call',
                   icon: Icons.call,
                   width: size.width * 0.35,
                 ),
               ),
             )
           ],
            )
          ],
        ),
      ),
    );
  }
}


