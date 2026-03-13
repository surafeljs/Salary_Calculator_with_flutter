import 'package:flutter/material.dart';
import 'package:salary_calculator/screen/gross.dart';
import 'package:salary_calculator/screen/net.dart';
import 'package:salary_calculator/screen/overtime.dart';
import 'package:fl_chart/fl_chart.dart';

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

                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 100,
                                child: PieChart(
                                  PieChartData(
                                    sectionsSpace: 2,
                                    centerSpaceRadius: 20,
                                    sections: [
                                      PieChartSectionData(
                                        value: 1500,
                                        color: Colors.green,
                                        title: 'Net Salary',
                                        radius: 40,
                                        titleStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      PieChartSectionData(
                                        value: 800,
                                        color: Colors.orange,
                                        title: 'Tax',
                                        radius: 40,
                                        titleStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      PieChartSectionData(
                                        value: 200,
                                        color: Colors.red,
                                        title: 'Pension',
                                        radius: 40,
                                        titleStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Net Salary",
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                "0.00",
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
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
                        child: Text(
                          'Net Salary',
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(fontSize: 18),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            index = 1;
                          });
                        },
                        child: Text(
                          'Gross',
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(fontSize: 18),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            index = 2;
                          });
                        },
                        child: Text(
                          'Overtime',
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(fontSize: 18),
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
                  height: 55,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      overlayColor: WidgetStatePropertyAll(
                        const Color.fromARGB(60, 255, 255, 255),
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
