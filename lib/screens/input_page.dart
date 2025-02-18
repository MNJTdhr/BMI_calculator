// lib/screens/input_page.dart
import 'package:flutter/material.dart';
import 'package:bmi_calculator/cards/reusable_cards.dart';
import 'package:bmi_calculator/cards/icon_content.dart';
import 'package:bmi_calculator/assets/constants.dart';

enum GenderEnum { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color _maleCardColor = kMaleColor;
  Color _femaleCardColor = kFemaleColor;

  void cardColorChanger(GenderEnum enteredGenderColor) {
    if (enteredGenderColor == GenderEnum.male) {
      _maleCardColor = _maleCardColor == Colors.indigoAccent
          ? Colors.indigo
          : Colors.indigoAccent;
      _femaleCardColor = Colors.pinkAccent;
    }
    if (enteredGenderColor == GenderEnum.female) {
      _femaleCardColor = _femaleCardColor == Colors.pinkAccent
          ? Colors.pink
          : Colors.pinkAccent;
      _maleCardColor = Colors.indigoAccent;
    }
  }

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
                      onPress: () {
                        setState(
                          () {
                            cardColorChanger(GenderEnum.male);
                          },
                        );
                      },
                      cardChild: IconContent(
                        incomingIcon: Icons.male,
                        incomingIconName: "MALE",
                      ),
                      height: kReusableCardsheight,
                      incomingColor: _maleCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCards(
                      onPress: () {
                        setState(
                          () {
                            cardColorChanger(GenderEnum.female);
                          },
                        );
                      },
                      cardChild: IconContent(
                        incomingIcon: Icons.female,
                        incomingIconName: "FEMALE",
                      ),
                      height: kReusableCardsheight,
                      incomingColor: _femaleCardColor,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ReusableCards(
                  onPress: () {},
                  cardChild: Column(
                    children: [],
                  ),
                  height: kReusableCardsheight,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ReusableCards(
                      onPress: () {},
                      cardChild: Column(
                        children: [],
                      ),
                      width: kReusableCardsheight,
                      height: kReusableCardsheight,
                    ),
                  ),
                  Expanded(
                    child: ReusableCards(
                      onPress: () {},
                      cardChild: Column(
                        children: [],
                      ),
                      width: kReusableCardsheight,
                      height: kReusableCardsheight,
                    ),
                  ),
                ],
              ),
              ReusableCards(
                onPress: () {},
                cardChild: Column(
                  children: [],
                ),
                height: 70,
                incomingColor: kBottomContainerColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
