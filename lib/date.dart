import 'package:flutter/material.dart';

class Date extends StatefulWidget {
  const Date({super.key});

  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(DateTime.now().toString(), style: const TextStyle(fontSize: 20), textAlign: TextAlign.center),
         ElevatedButton(
           onPressed: () {
             setState(() {
                // Refresh the date
                Text(DateTime.now().toString(), style: const TextStyle(fontSize: 20), textAlign: TextAlign.center);
             });
           },
           child: const Text('Refresh'),
         )
      ]
    );
  }
}