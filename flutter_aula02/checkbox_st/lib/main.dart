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
  var checks = [false, false, false, false];
  String c1 = '';
  String c2 = '';

  String identifyM({bool can = true}) {
    var ix = checks.indexOf(true);
    switch (ix) {
      case 0:
        checks[ix] = can? false : true;
        return 'Artes';
      case 1:
        checks[ix] = can? false : true;
        return 'Matemática';
      case 2:
        checks[ix] = can? false : true;
        return 'Geografia';
      case 3:
        checks[ix] = can? false : true;
        return 'História';
      default:
        return '';
    }
  }

  // void _incrementCounter(bool value) {
  //   setState(() {
  //     _counter = !_counter;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Selecione uma ou duas matérias'),
            //Artes
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(tristate:true, value:checks[0], onChanged: (value) {
                  setState(() {
                    int count = 0;
                    for (var c in checks) {
                      if (c) {
                        count++;
                      }
                    }

                    if (count < 2 || checks[0]) {
                      checks[0] = !checks[0];
                    }
                  });
                },),
                const Text('Artes')
              ],
            ),
            //Matematica
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(tristate:true, value:checks[1], onChanged: (value) {
                  setState(() {
                    int count = 0;
                    for (var c in checks) {
                      if (c) {
                        count++;
                      }
                    }

                    if (count < 2 || checks[1]) {
                      checks[1] = !checks[1];
                    }
                  });
                },),
                const Text('Matemática')
              ],
            ),
            //Geografia
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(tristate:true, value:checks[2], onChanged: (value) {
                  setState(() {
                    int count = 0;
                    for (var c in checks) {
                      if (c) {
                        count++;
                      }
                    }

                    if (count < 2 || checks[2]) {
                      checks[2] = !checks[2];
                    }
                  });
                },),
                const Text('Geografia')
              ],
            ),
            //História
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(tristate:true, value:checks[3], onChanged: (value) {
                  setState(() {
                    int count = 0;
                    for (var c in checks) {
                      if (c) {
                        count++;
                      }
                    }

                    if (count < 2 || checks[3]) {
                      checks[3] = !checks[3];
                    }
                  });
                },),
                const Text('História')
              ],
            ),
            FloatingActionButton(onPressed: () {
              setState(() {
                c1 = identifyM();
                c2 = identifyM(can: false)==''? '' : ' e ${identifyM()}';
              });
            }, child: const Text('Veja'),),
            Text('$c1$c2')
          ],
        ),
      ), 
    );
  }
}
