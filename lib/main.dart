import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/Input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        // primaryColor: Colors.red,
        appBarTheme: const AppBarTheme(
          color: Color(0xff0A0E21),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
        ),
        scaffoldBackgroundColor: const Color(0xff0b1034),
      ),
      home: InputPage(),
    );
  }
}
