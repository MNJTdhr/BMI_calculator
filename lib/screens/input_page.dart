// lib/screens/input_page.dart
import 'package:flutter/material.dart';
import 'package:bmi_calculator/cards/reusable_cards.dart';
import 'package:bmi_calculator/cards/icon_content.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double reusableCardsheight = 200;
const Color bottomContainerColor = Color.fromARGB(255, 245, 1, 0);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color _maleCardColor = Colors.indigoAccent;
  Color _femaleCardColor = Colors.pinkAccent;

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
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _maleCardColor = _maleCardColor == Colors.indigoAccent
                              ? Colors.indigo
                              : Colors.indigoAccent;
                          _femaleCardColor = Colors.pinkAccent;
                        });
                      },
                      child: ReusableCards(
                        cardChild: IconContent(
                          incomingIcon: Icons.male,
                          incomingIconName: "MALE",
                        ),
                        height: reusableCardsheight,
                        incomingColor: _maleCardColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _femaleCardColor =
                              _femaleCardColor == Colors.pinkAccent
                                  ? Colors.pink
                                  : Colors.pinkAccent;
                          _maleCardColor = Colors.indigoAccent;
                        });
                      },
                      child: ReusableCards(
                        cardChild: IconContent(
                          incomingIcon: Icons.female,
                          incomingIconName: "FEMALE",
                        ),
                        height: reusableCardsheight,
                        incomingColor: _femaleCardColor,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ReusableCards(
                  cardChild: Column(
                    children: [],
                  ),
                  height: reusableCardsheight,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ReusableCards(
                      cardChild: Column(
                        children: [],
                      ),
                      width: reusableCardsheight,
                      height: reusableCardsheight,
                    ),
                  ),
                  Expanded(
                    child: ReusableCards(
                      cardChild: Column(
                        children: [],
                      ),
                      width: reusableCardsheight,
                      height: reusableCardsheight,
                    ),
                  ),
                ],
              ),
              ReusableCards(
                cardChild: Column(
                  children: [],
                ),
                height: 70,
                incomingColor: bottomContainerColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
