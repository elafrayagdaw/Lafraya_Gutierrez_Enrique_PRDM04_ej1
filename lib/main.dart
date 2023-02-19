import 'package:flutter/material.dart';
import 'package:lafraya_gutierrez_enrique_prdm04_ej1/alert.dart';
import 'package:lafraya_gutierrez_enrique_prdm04_ej1/date.dart';
import 'package:lafraya_gutierrez_enrique_prdm04_ej1/slider.dart';
import 'package:lafraya_gutierrez_enrique_prdm04_ej1/switch.dart';
import 'package:lafraya_gutierrez_enrique_prdm04_ej1/slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TabBar Demo'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.date_range),text: "Date",),
                Tab(icon: Icon(Icons.warning), text: "Alert",),
                Tab(icon: Icon(Icons.switch_left_outlined), text: "Switch",),
                Tab(icon: Icon(Icons.swipe), text: "Slider",),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Date(),
              Alert(),
              SwitchClass(),
              SliderClass(),
            ],
          ),
        ),
      ),
      );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
