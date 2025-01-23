// lib/screens/input_page.dart
import 'package:flutter/material.dart';

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
          title: Center(
            child: Text(
              "BMI Calculator",
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "data",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            FloatingActionButton.extended(
              onPressed: () {},
              label: Text(
                "data",
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
