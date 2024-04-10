import 'dart:math';

import 'Retangulo.dart';

class Quadrado extends Retangulo {

  Quadrado(super.comprimento,super.largura,super.cor);

  double diagonal() {
    return (super.comprimento)*(sqrt(2));
  }

  void imprimir() {
    print('''
      Lado: ${super.comprimento}
      Cor: ${super.cor}
    ''');
  }
}