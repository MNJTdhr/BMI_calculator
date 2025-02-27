// lib/screens/input_page.dart
import 'package:flutter/material.dart';
import 'package:bmi_calculator/cards/reusable_cards.dart';
import 'package:bmi_calculator/cards/icon_content.dart';
import 'package:bmi_calculator/assets/constants.dart';
import 'package:bmi_calculator/cards/customized_button.dart';

enum GenderEnum { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color _maleCardColor = kMaleColor;
  Color _femaleCardColor = kFemaleColor;
  num height = kDefaultHeight;
  int weight = kDefaultweight;
  int age = kDefaultage;

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
    return Scaffold(
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          "cm",
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Colors.redAccent,
                        overlayColor: Colors.red,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 15),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: kMinHeight,
                        max: kMaxHeight,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.toInt();
                          });
                        },
                      ),
                    ),
                  ],
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomizedButton(
                              incomingIcon: Icons.add,
                              onPress: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            CustomizedButton(
                              incomingIcon: Icons.remove,
                              onPress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    height: kReusableCardsheight,
                  ),
                ),
                Expanded(
                  child: ReusableCards(
                    onPress: () {},
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomizedButton(
                              incomingIcon: Icons.add,
                              onPress: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            CustomizedButton(
                              incomingIcon: Icons.remove,
                              onPress: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
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
    );
  }
}
