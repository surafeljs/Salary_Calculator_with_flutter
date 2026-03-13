import 'package:flutter/material.dart';
import 'package:salary_calculator/screen/homepage.dart';

void main() {
  runApp(SalaryCalculator());
}

class SalaryCalculator extends StatefulWidget {
  const SalaryCalculator({super.key});

  @override
  State<SalaryCalculator> createState() => _SalaryCalculatorState();
}

class _SalaryCalculatorState extends State<SalaryCalculator> {
  bool theme = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF121212),
        cardTheme: CardThemeData(color: Color(0xFF121212)),
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
      themeMode: theme ? ThemeMode.light : ThemeMode.dark,

      home: Homepage(),
    );
  }
}
