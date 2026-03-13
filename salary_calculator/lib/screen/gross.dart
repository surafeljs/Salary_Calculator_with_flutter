import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Gross extends StatefulWidget {
  const Gross({super.key});

  @override
  State<Gross> createState() => _GrossState();
}

class _GrossState extends State<Gross> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),

      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Basic Salary',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(fontSize: 15.0),
            ),

            const SizedBox(height: 10),

            TextFormField(
              minLines: 1,
              keyboardType: TextInputType.number,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF003049),
              ),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                label: Text(
                  'Enter Your Net Salary',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                prefixIcon: Icon(Icons.attach_money, color: Color(0xFF003049)),
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
