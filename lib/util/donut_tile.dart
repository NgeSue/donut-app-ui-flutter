import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutName;
  final String donutPrice;
  final donutColor;
  final String imageName;
  final double borderRadius = 12.0;
  const DonutTile(
      {super.key,
      required this.donutName,
      required this.donutPrice,
      required this.donutColor,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          decoration: BoxDecoration(
              color: donutColor[50],
              borderRadius: BorderRadius.circular(borderRadius)),
          child: Column(
            children: [
//  price
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: donutColor[100],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(borderRadius),
                              topRight: Radius.circular(borderRadius))),
                      child: Text(
                        donutPrice + ' ks',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: donutColor[800]),
                      )),
                ],
              ),

              // donut picture
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 36.0, vertical: 12.0),
                child: Image.asset(imageName),
              ),

              const SizedBox(
                height: 8,
              ),
              // donut falvour
              Text(
                donutName,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'Dunkin',
                style: TextStyle(color: Colors.grey),
              ),

              // love icon + add button
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.pink[400],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.pink[400]),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
