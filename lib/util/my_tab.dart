import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final bool tap;

  // final String text;
  MyTab({
    super.key,
    required this.iconPath,
    required this.tap,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: tap ? Colors.pink : Colors.white,
            borderRadius: BorderRadius.circular(12)),
        child: Image.asset(
          iconPath,
          color: tap ? Colors.white : Colors.pink,
        ),
      ),
    );
  }
}
