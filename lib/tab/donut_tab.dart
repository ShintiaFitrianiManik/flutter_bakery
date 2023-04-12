import 'package:flutter/material.dart';
import '../util/donut_tile.dart';
import 'package:bakery/main.dart';

class DonutTab extends StatelessWidget {
  // list of donuts
  List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Ice Cream", "1", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "1,5", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "1", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "2", Colors.brown, "lib/images/chocolate_donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}
