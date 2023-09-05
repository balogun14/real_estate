import 'package:flutter/material.dart';
import 'package:ui_design_one/widgets/borderBox.dart';
import 'package:ui_design_one/utils/constants.dart';
import 'package:ui_design_one/utils/custom_functions.dart';
import 'package:ui_design_one/utils/widget_functions.dart';

class RealEstateItem extends StatelessWidget {
  final dynamic itemData;
  const RealEstateItem({super.key, required this.itemData});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Image.asset(
                    itemData['image'],
                    fit: BoxFit.cover,
                  )),
              const Positioned(
                  top: 15,
                  right: 15,
                  child: BorderBox(
                      padding: EdgeInsets.all(8.0),
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.favorite_border,
                        color: colorBlack,
                      )))
            ],
          ),
          addVerticalSpace(15),
          Row(
            children: [
              Text(
                formatCurrency(itemData['amount']),
                style: themeData.textTheme.displayLarge,
              ),
              addHorizontalSpace(10),
              Text(
                "${itemData['address']}",
                style: themeData.textTheme.bodyMedium,
              ),
              addVerticalSpace(10),
            ],
          ),
          Text(
            "${itemData['bedrooms']} bedrooms / ${itemData['bathrooms']} bathrooms / ${itemData['area']} sqft",
            style: themeData.textTheme.headlineSmall,
          )
        ],
      ),
    );
  }
}
