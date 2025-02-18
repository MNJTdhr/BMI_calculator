// lib/cards/icon_content.dart
import 'package:flutter/material.dart';
import 'package:bmi_calculator/assets/constants.dart';

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
          size: kIconSize,
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          incomingIconName,
          style: kTextStyling,
        ),
      ],
    );
  }
}
