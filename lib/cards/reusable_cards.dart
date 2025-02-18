// lib/cards/reusable_cards.dart
import 'package:flutter/material.dart';

class ReusableCards extends StatelessWidget {
  const ReusableCards({
    this.incomingColor = const Color(0xFF1D1E33),
    required this.cardChild,
    this.width=double.infinity,
    this.height = 200,
    required this.onPress,
    super.key,
  });

  final double width;
  final Widget cardChild;
  final double height;
  final Color incomingColor;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: width,
        height: height,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: incomingColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
