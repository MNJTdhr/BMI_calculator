// lib/screens/results_page.dart
import 'package:bmi_calculator/cards/reusable_cards.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/assets/constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    required this.getRecom,
    required this.calculateBMI,
    required this.getResult,
    super.key,
  });

  final String getResult;
  final String calculateBMI;
  final String getRecom;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("BMI Result"),
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Your Result",
                  style: kNumberTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 27, 28, 43),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      getResult.toUpperCase(),
                      style: kBMIResultIndicator,
                    ),
                    Text(
                      calculateBMI,
                      style: kBMIResultValue,
                    ),
                    Text(
                      getRecom.toUpperCase(),
                      style: kBMIResultSugg,
                    ),
                  ],
                ),
              ),
            ),
            ReusableCards(
              onPress: () {
                Navigator.pop(context);
              },
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "RE-CALCULATE",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
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
