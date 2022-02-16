import 'package:bmi_calculator/ResultPage.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

const AppPrimaryColor = Color(0xFF0A0E21) ;
void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: AppPrimaryColor,
        scaffoldBackgroundColor: AppPrimaryColor,
        appBarTheme: AppBarTheme(
          color: AppPrimaryColor,
        )

      ),
      initialRoute: '/Calc',
      routes: {
        '/Calc' : (context) => InputPage(),
        '/Result' : (context) => ResultPage()
      },
    );

  }
}
