import 'package:bmi_calculator/screens/results_page.dart';
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
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 19, 37),
      ),
      routes: {
        '/': (context) => InputPage(),
        '/calculate': (context) => ResultsPage(),
      },
      initialRoute: '/',
    );
  }
}
