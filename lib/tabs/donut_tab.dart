import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

class DonutTab extends StatelessWidget {
  List donutsOnSale = [
    // falvour , price ,color ,image
    ["Ice Cream", "1300", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "2500", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "2000", Colors.purple, "lib/images/icecream_donut.png"],
    ["Choco", "3500", Colors.brown, "lib/images/chocolate_donut.png"],
  ];

  //  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: donutsOnSale.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return DonutTile(
              donutName: donutsOnSale[index][0],
              donutPrice: donutsOnSale[index][1],
              donutColor: donutsOnSale[index][2],
              imageName: donutsOnSale[index][3]);
        });
  }
}
