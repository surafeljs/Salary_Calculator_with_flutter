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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homepage());
  }
}
