import 'package:flutter/material.dart';
import 'screens/input_page.dart';

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