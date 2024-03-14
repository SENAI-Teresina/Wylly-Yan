import 'Circulo.dart';

class CirculoColorido extends Circulo {
  String corPreenchimento;

  CirculoColorido(super.raio,super.cor,this.corPreenchimento);

  void imprimir() {
    print('''
      Raio: ${this.raio}
      Cor: ${this.cor}
      Cor de Preenchimento: ${this.corPreenchimento}
    ''');
  }
}