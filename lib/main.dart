import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        // colorScheme: ColorScheme.fromSwatch(accentColor: Colors.purple),
      ),
      home: InputPage(),
    );
  }
}


