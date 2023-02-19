import 'package:flutter/material.dart';

class SwitchClass extends StatefulWidget {
  const SwitchClass({super.key});

  @override
  State<SwitchClass> createState() => _SwitchState();
}

class _SwitchState extends State<SwitchClass> {
  bool active = true;
  String text = "Switch is active";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text , style: const TextStyle(fontSize: 40), textAlign: TextAlign.center),
        Switch(
          // This bool value toggles the switch.
          value: active,
          onChanged: (bool value) {
            // This is called when the user toggles the switch.
            setState(() {
              active = value;
              text = active ? "Switch is active" : "Switch is inactive";
            });
          },
        )
      ],
    );
  }
}
