import 'package:flutter/material.dart';

/// Flutter code sample for [Form].

void main() => runApp(const FormExampleApp());

class FormExampleApp extends StatelessWidget {
  const FormExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Form Sample')),
        body: const FormExample(),
      ),
    );
  }
}

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String strvalue = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Insira seu nome',
              labelText: 'Nome *'
            ),
            autovalidateMode: AutovalidateMode.always,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Insira um texto';
              }
              return null;
            },
          ),

          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.email),
              hintText: 'Insira seu email',
              labelText: 'Email *'
            ),
            autovalidateMode: AutovalidateMode.always,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Insira um texto';
              }
              return null;
            },
          ),

          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.password),
              hintText: 'Insira sua senha',
              labelText: 'Senha *'
            ),
            autovalidateMode: AutovalidateMode.always,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Insira um texto';
              }
              return null;
            },
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Process data.
                  setState(() {
                    strvalue = 'Enviado com sucesso';
                  });
                }
              },
              child: const Text('Submit'),
            ),
          ),
          Text(strvalue)
        ],
      ),
    );
  }
}
