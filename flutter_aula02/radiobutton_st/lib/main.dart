import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

enum Alternatives {a, b, c, d, e, none}
enum Questions {a, b}

class _MyHomePageState extends State<MyHomePage> {
  
  List<Alternatives> questoes = [Alternatives.none, Alternatives.none];
  List<Alternatives> gabarito = [Alternatives.a, Alternatives.a];

  void updateAnswer({int id = 0, Alternatives answer = Alternatives.a}) {
    if (questoes.length == id) {
      questoes.add(answer);
    } else {
      questoes[id] = answer;
    }

  }

  String textoCorrigido = '';

  void corrigir() {
    String acertos = "Q.Certas: ";
    String erros = "| Q.Erradas: ";
    for (int i = 0; i < gabarito.length; i++) {
      if (questoes[i] == gabarito[i]) {
        acertos = '''$acertos${i+1}, ''';
      } else {
        erros = '''$erros${i+1}, ''';
      }
    }
    textoCorrigido = acertos+erros;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            const Text('1. João foi comprar jogos de PS2. Ele comprou 2 elevado ao quadrado. Quantos jogos João Comprou?'),
            RadioListTile (
              title: const Text('a) 4'),
              value: questoes[0],
              groupValue: Alternatives.a, //Resyt
              onChanged: (Alternatives? value) {
                setState(() {
                  updateAnswer(id: 0, answer: Alternatives.a);
                });
            }),
            RadioListTile (
              title: const Text('b) 6'),
              value: questoes[0],
              groupValue: Alternatives.b, //Resyt
              onChanged: (Alternatives? value) {
                setState(() {
                  updateAnswer(id: 0, answer: Alternatives.b);
                });
            }),
            RadioListTile (
              title: const Text('c) 8'),
              value: questoes[0],
              groupValue: Alternatives.c, //Resyt
              onChanged: (Alternatives? value) {
                setState(() {
                  updateAnswer(id: 0, answer: Alternatives.c);
                });
            }),
            RadioListTile (
              title: const Text('d) 10'),
              value: questoes[0],
              groupValue: Alternatives.d, //Resyt
              onChanged: (Alternatives? value) {
                setState(() {
                  updateAnswer(id: 0, answer: Alternatives.d);
                });
            }),

            const Text('2. Qual a velocidade de Caio em relação a uma pedra, ambos com velocidade média de 20Km/h em relação a um observador estático?'),
            RadioListTile (
              title: const Text('a) 0'),
              value: questoes[1],
              groupValue: Alternatives.a, //Resyt
              onChanged: (Alternatives? value) {
                setState(() {
                  updateAnswer(id: 1, answer: Alternatives.a);
                });
            }),
            RadioListTile (
              title: const Text('b) 20'),
              value: questoes[1],
              groupValue: Alternatives.b, //Resyt
              onChanged: (Alternatives? value) {
                setState(() {
                  updateAnswer(id: 1, answer: Alternatives.b);
                });
            }),
            RadioListTile (
              title: const Text('c) -20'),
              value: questoes[1],
              groupValue: Alternatives.c, //Resyt
              onChanged: (Alternatives? value) {
                setState(() {
                  updateAnswer(id: 1, answer: Alternatives.c);
                });
            }),
            RadioListTile (
              title: const Text('d) 10'),
              value: questoes[1],
              groupValue: Alternatives.d, //Resyt
              onChanged: (Alternatives? value) {
                setState(() {
                  updateAnswer(id: 1, answer: Alternatives.d);
                });
            }),
                
            FloatingActionButton(child: const Text('Corrigir'),onPressed: () {
              setState(() {
                corrigir();
              });
            }),

            Container(
              margin: const EdgeInsets.all(10),
              child: Text(textoCorrigido),
            )

          ],
        ),
      ), 
    );
  }
}
