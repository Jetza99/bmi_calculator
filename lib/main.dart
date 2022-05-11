import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF090C22),
          brightness: Brightness.dark,
          secondary: Colors.cyanAccent,
        ),
      ),
      home: InputPage(),
    );
  }
}

