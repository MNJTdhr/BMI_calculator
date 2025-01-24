// lib/cards/reusable_cards.dart
import 'package:flutter/material.dart';

class ReusableCards extends StatelessWidget {
  // const ReusableCards(this.incomingColor, {required this.width, super.key});
  const ReusableCards({
    this.incomingColor = const Color(0xFF1D1E33),
    this.width=double.infinity,
    this.height = 200,
    super.key,
  });

  final double width;
  final double height;
  final Color incomingColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: incomingColor,
        // color: const Color.fromARGB(255, 27, 28, 43),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
