// lib/screens/input_page.dart
import 'package:flutter/material.dart';
import 'package:bmi_calculator/cards/reusable_cards.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double reusableCardsheight = 200;
const double reusableCardswidth = 200;
const Color bottomContainerColor = Color.fromARGB(255, 245, 1, 0);

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
                      cardChild: Container(
                        margin: EdgeInsets.all(20),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.male,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      width: reusableCardsheight,
                      height: reusableCardsheight,
                      incomingColor: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: ReusableCards(
                      cardChild: Container(
                        margin: EdgeInsets.all(20),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(Icons.female),
                              Text(
                                "Female",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      width: reusableCardsheight,
                      incomingColor: Colors.pink,
                      height: reusableCardsheight,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ReusableCards(
                  cardChild: Column(
                    children: [
                      
                    ],
                  ),
                  height: reusableCardsheight,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ReusableCards(
                      cardChild: Column(
                        children: [
                          
                        ],
                      ),
                      width: reusableCardsheight,
                      height: reusableCardsheight,
                    ),
                  ),
                  Expanded(
                    child: ReusableCards(
                      cardChild: Column(
                        children: [
                          
                        ],
                      ),
                      width: reusableCardsheight,
                      height: reusableCardsheight,
                    ),
                  ),
                ],
              ),
              ReusableCards(
                cardChild: Column(
                  children: [
                    
                  ],
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
