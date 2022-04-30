import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  // int height = 65;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int height = 0;
  int weight = 0;
  double bmi = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
        ),
        body: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 20),
            child: Center(
              child: TextField(
                onChanged: (value) {
                  height = int.parse(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Height in inches',
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 100.0, right: 100),
            child: Center(
              child: TextField(
                onChanged: (val) {
                  weight = int.parse(val);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Weight in Pounds',
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: 125,
            height: 45,
            child: ElevatedButton(
              child: const Text(
                "Calculate",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              onPressed: () {
                setState(() {
                  bmi = (weight * 703 / (height * height)).roundToDouble();
                });
              },
            ),
          ),
          const SizedBox(height: 15),
          Text(
            bmi.toString(),
            style: const TextStyle(
              color: Colors.redAccent,
              fontSize: 19.4,
              fontWeight: FontWeight.w500,
            ),
          ),
        ]),
      ),
    );
  }
}