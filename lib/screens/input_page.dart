// lib/screens/input_page.dart
import 'package:flutter/material.dart';
import 'package:bmi_calculator/cards/reusable_cards.dart';

const double reusableCardsheight = 200;
const double reusableCardswidth = 200;

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 19, 37),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("BMI Calculator")),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ReusableCards(
                      width: reusableCardsheight,
                      height: reusableCardsheight,
                      incomingColor: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: ReusableCards(
                        width: reusableCardsheight,
                        height: reusableCardsheight),
                  ),
                ],
              ),
              Expanded(
                child: ReusableCards(
                  height: reusableCardsheight,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ReusableCards(
                        width: reusableCardsheight,
                        height: reusableCardsheight),
                  ),
                  Expanded(
                    child: ReusableCards(
                        width: reusableCardsheight,
                        height: reusableCardsheight),
                  ),
                ],
              ),
              ReusableCards(
                height: 70,
                incomingColor: const Color.fromARGB(255, 234, 17, 75),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
