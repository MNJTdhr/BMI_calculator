import 'package:flutter/material.dart';
import 'screens/input_page.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyBMIcalc());
}

class MyBMIcalc extends StatelessWidget {
  const MyBMIcalc({super.key});

  @override
  Widget build(BuildContext context) {
    return const InputPage();
  }
}
