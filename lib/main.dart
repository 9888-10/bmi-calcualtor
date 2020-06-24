import 'package:flutter/material.dart';
import 'main_page/bmi_calculator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bmi Calculator',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: BmiCalculator(),
    );
  }
}