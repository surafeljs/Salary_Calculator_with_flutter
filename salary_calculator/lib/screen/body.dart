import 'package:flutter/material.dart';
import 'package:salary_calculator/screen/gross.dart';

import 'package:salary_calculator/screen/net.dart';
import 'package:salary_calculator/screen/overtime.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

int index = 0;

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // keyboard ከፍ ሲሆን overflow አይፈጠር
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// CARD (Net Salary, Tax, Pension)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Card.filled(
                  elevation: 6,
                  child: SizedBox(
                    height: 170,
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.crop_square,
                                      color: Colors.green,
                                    ),
                                    Text("Net Salary"),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 30.0,
                                  ),
                                  child: Text("0.00"),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.crop_square, color: Colors.red),
                                    Text("Tax"),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 30.0,
                                  ),
                                  child: Text("0.00"),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.crop_square,
                                      color: Colors.orange,
                                    ),
                                    Text("Pension"),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 30.0,
                                  ),
                                  child: Text("0.00"),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundColor: Color.fromARGB(
                                  65,
                                  76,
                                  175,
                                  79,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Net Salary",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF003049),
                                ),
                              ),
                              Text(
                                "0.00",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF003049),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              /// BUTTONS (Net, Gross, Overtime)
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 10.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(57, 158, 158, 158),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            index = 0;
                          });
                        },
                        child: const Text(
                          'Net Salary',
                          style: TextStyle(
                            color: Color(0xFF003049),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            index = 1;
                          });
                        },
                        child: const Text(
                          'Gross',
                          style: TextStyle(
                            color: Color(0xFF003049),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            index = 2;
                          });
                        },
                        child: const Text(
                          'Overtime',
                          style: TextStyle(
                            color: Color(0xFF003049),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /// FORM FIELDS
              IndexedStack(
                index: index,
                children: [Net(), Gross(), Overtime()],
              ),

              /// CALCULATE BUTTON
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 15.0,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      overlayColor: WidgetStatePropertyAll(
                        const Color.fromARGB(56, 255, 86, 34),
                      ),
                      backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(41, 68, 68, 78),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Calculate',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF003049),
                        letterSpacing: 3.0,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
