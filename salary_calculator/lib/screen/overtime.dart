import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Overtime extends StatefulWidget {
  const Overtime({super.key});

  @override
  State<Overtime> createState() => _OvertimeState();
}

class _OvertimeState extends State<Overtime> {
  DateTime? date;
  Timer? _timer;
  @override
  void initState() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer tim) {
      setState(() {
        DateTime utcTime = DateTime.now().toUtc();
        DateTime ethTime = utcTime.add(const Duration(hours: 3));
        date = ethTime;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),

        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Basic Salary',
                style: TextStyle(color: Color(0xFF003049), fontSize: 15),
              ),

              const SizedBox(height: 10),

              TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF003049),
                ),
                decoration: InputDecoration(
                  hint: Text('Enter Your Basic Salary'),

                  prefixIcon: Icon(
                    Icons.attach_money,
                    color: Color(0xFF003049),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 15),
              FittedBox(
                child: const Text(
                  'Overtime from 6:00 Am to 10:00 Pm',
                  style: TextStyle(color: Color(0xFF003049), fontSize: 15),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FittedBox(
                    child: const Text(
                      'Hours',
                      style: TextStyle(
                        color: Color(0xFF003049),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  FittedBox(
                    child: const Text(
                      'Minute',
                      style: TextStyle(
                        color: Color(0xFF003049),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              const SizedBox(height: 10),

              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF003049),
                      ),
                      decoration: InputDecoration(
                        hint: Text('${date?.hour}'),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF003049),
                      ),
                      decoration: InputDecoration(
                        hint: Text('${date?.minute}'),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              FittedBox(
                child: const Text(
                  'Overtime from 10:00 Pm  to 6:00 Am',
                  style: TextStyle(color: Color(0xFF003049), fontSize: 15),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FittedBox(
                    child: const Text(
                      'Hours',
                      style: TextStyle(
                        color: Color(0xFF003049),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  FittedBox(
                    child: const Text(
                      'Minute',
                      style: TextStyle(
                        color: Color(0xFF003049),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              const SizedBox(height: 10),

              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF003049),
                      ),
                      decoration: InputDecoration(
                        hint: Text('${date?.hour}'),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF003049),
                      ),
                      decoration: InputDecoration(
                        hint: Text('${date?.minute}'),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),
              FittedBox(
                child: const Text(
                  'Overtime on rest day',
                  style: TextStyle(color: Color(0xFF003049), fontSize: 15),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FittedBox(
                    child: const Text(
                      'Hours',
                      style: TextStyle(
                        color: Color(0xFF003049),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  FittedBox(
                    child: const Text(
                      'Minute',
                      style: TextStyle(
                        color: Color(0xFF003049),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              const SizedBox(height: 10),

              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF003049),
                      ),
                      decoration: InputDecoration(
                        hint: Text('${date?.hour}'),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF003049),
                      ),
                      decoration: InputDecoration(
                        hint: Text('${date?.minute}'),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),
              FittedBox(
                child: const Text(
                  'Overtime on a holiday',
                  style: TextStyle(color: Color(0xFF003049), fontSize: 15),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FittedBox(
                    child: const Text(
                      'Hours',
                      style: TextStyle(
                        color: Color(0xFF003049),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  FittedBox(
                    child: const Text(
                      'Minute',
                      style: TextStyle(
                        color: Color(0xFF003049),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              const SizedBox(height: 10),

              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF003049),
                      ),
                      decoration: InputDecoration(
                        hint: Text('${date?.hour}'),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF003049),
                      ),
                      decoration: InputDecoration(
                        hint: Text('${date?.minute}'),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
