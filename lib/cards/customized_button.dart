import 'package:flutter/material.dart';

class CustomizedButton extends StatelessWidget {
  const CustomizedButton({
    required this.incomingIcon,
    this.incomingButtonColor = const Color.fromARGB(255, 66, 67, 83),
    this.incomingIconColor = Colors.white,
    required this.onPress,
    super.key,
  });

  final IconData incomingIcon;
  final Color incomingButtonColor;
  final Color incomingIconColor;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: incomingButtonColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        minimumSize: const Size(50, 60),
      ),
      child: Icon(
        incomingIcon,
        color: incomingIconColor,
      ),
    );
  }
}
