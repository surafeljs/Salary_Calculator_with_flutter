import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Body extends StatelessWidget {
  const Body({super.key});

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
                    height: 218,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              ListTile(
                                leading: Icon(
                                  Icons.crop_square,
                                  color: Colors.green,
                                ),
                                title: Text("Net Salary"),
                                subtitle: Text("0.00"),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.crop_square,
                                  color: Colors.red,
                                ),
                                title: Text("Tax"),
                                subtitle: Text("0.00"),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.crop_square,
                                  color: Colors.orange,
                                ),
                                title: Text("Pension"),
                                subtitle: Text("0.00"),
                              ),
                            ],
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.red,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Net Salary",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "1200052",
                                style: TextStyle(
                                  fontSize: 20,
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
                        onPressed: () {},
                        child: const Text(
                          'Net Salary',
                          style: TextStyle(
                            color: Color(0xFF003049),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Gross',
                          style: TextStyle(
                            color: Color(0xFF003049),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Basic Salary '),
                      const SizedBox(height: 10.0),
                      TextFormField(
                        minLines: 1,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),

                      Text('Transport (Optional) '),
                      const SizedBox(height: 10.0),
                      TextFormField(
                        minLines: 1,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),

                      Text('Obertime (Optional) '),
                      const SizedBox(height: 10.0),
                      TextFormField(
                        minLines: 1,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),

                      Text('Others (Optional) '),
                      const SizedBox(height: 10.0),
                      TextFormField(
                        minLines: 1,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                    ],
                  ),
                ),
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
