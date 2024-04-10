import 'FiguraGeometrica.dart';

class LosangoColorido extends FiguraGeometrica {
  double lado;
  String cor;

  LosangoColorido(this.lado, this.cor);

  void imprimir() {
    print('''
      Lado: ${this.lado}
      Cor: ${this.cor}
    ''');
  }
}