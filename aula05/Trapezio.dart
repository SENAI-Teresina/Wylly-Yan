import 'FiguraGeometrica.dart';

class Trapezio extends FiguraGeometrica {
  double baseMaior, baseMenor, altura;
  String cor;

  Trapezio(this.baseMaior, this.baseMenor, this.altura, this.cor);

  @override
  double area(double diag1, double diag2) {
    return ((this.baseMaior+this.baseMenor)*this.altura)/2;
  }

  @override
  double perimetro(double diag1, double diag2) {
    return this.baseMaior+this.baseMenor+diag1+diag2;
  }
}