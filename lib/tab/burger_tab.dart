import 'package:flutter/material.dart';
import '../util/burger_tile.dart';
import 'package:bakery/main.dart';

class BurgerTab extends StatelessWidget {
  // list of burgers
  List burgersOnSale = [
    // [ burgerFlavor, burgerPrice, burgerColor, imageName ]
    ["Extra Cheese", "1", Colors.blue, "lib/images/extracheesz.png"],
    ["Kecap", "1,5", Colors.red, "lib/images/extrakecap.png"],
    ["Tomato", "1", Colors.purple, "lib/images/extratomato.png"],
    ["Premium", "2", Colors.brown, "lib/images/extrapremium.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgersOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerFlavor: burgersOnSale[index][0],
          burgerPrice: burgersOnSale[index][1],
          burgerColor: burgersOnSale[index][2],
          imageName: burgersOnSale[index][3],
        );
      },
    );
  }
}
