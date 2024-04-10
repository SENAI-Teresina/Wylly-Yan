import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Teste',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _currentValue = 0.0;
  final double _max = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Slider(value: _currentValue, max: _max, divisions: _max.round(), label: "♫ ${_currentValue.round()}", onChanged: (double newValue) {
              setState(() {
                _currentValue = newValue;
              });
            },)
            //Text(_counter? 'ON': 'OFF', style: TextStyle(color: _counter? Colors.white: Colors.red)),
            //Switch(value: _counter, onChanged: _incrementCounter, activeColor: Colors.red,),
          ],
        ),
      ), 
    );
  }
}
