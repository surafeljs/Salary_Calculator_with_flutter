import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Net extends StatefulWidget {
  const Net({super.key});

  @override
  State<Net> createState() => _NetState();
}

class _NetState extends State<Net> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                prefixIcon: Icon(Icons.attach_money, color: Color(0xFF003049)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              'Transport (Optional)',
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
                hint: Text('Enter Transport Allowance'),

                prefixIcon: Icon(Icons.commute, color: Color(0xFF003049)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              'Overtime (Optional)',
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
                hint: Text('Enter Overtime'),

                prefixIcon: Icon(Icons.access_time, color: Color(0xFF003049)),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              'Others Allowance (Optional)',
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
                hint: Text('Enter Others Allowance'),

                prefixIcon: Icon(Icons.card_giftcard, color: Color(0xFF003049)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
