import 'package:flutter/material.dart';

class SliderClass extends StatefulWidget {
  const SliderClass({super.key});

  @override
  State<SliderClass> createState() => _SliderState();
}

class _SliderState extends State<SliderClass> {
  double valor = 0.5;
  String numero = 0.5.toString();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(numero, style: const TextStyle(fontSize: 40), textAlign: TextAlign.center),
          Slider(
            value: valor,
            max: 100,
            onChanged: (double value) {
              setState(() {
                // Refresh the slider
                valor = value;
                numero = valor == 100 ? valor.toString().substring(0,3) : valor > 10 ? valor.toString().substring(0,2) : valor.toString().substring(0,1);
              });
            },
          )
        ],
      ),
    );
  }
}