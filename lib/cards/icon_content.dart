// lib/cards/icon_content.dart
import 'package:flutter/material.dart';

const double iconSize = 100;
const textStyling = TextStyle(fontSize: 20, color: Colors.white);

class IconContent extends StatelessWidget {
  const IconContent({
    this.incomingIcon = Icons.add,
    this.incomingIconName = "",
    super.key,
  });

  final IconData incomingIcon;
  final String incomingIconName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          incomingIcon,
          size: iconSize,
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          incomingIconName,
          style: textStyling,
        ),
      ],
    );
  }
}
