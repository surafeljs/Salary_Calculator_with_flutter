import 'package:flutter/material.dart';
import 'package:salary_calculator/screen/body.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool theme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0XFF1B3C53),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {
                setState(() {
                  theme = !theme;
                });
              },
              icon: theme
                  ? Icon(Icons.light_mode, color: Colors.white)
                  : Icon(Icons.dark_mode, color: Colors.black),
            ),
          ),
        ],

        title: Text(
          "Salary Calculator",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: Body(),
    );
  }
}
