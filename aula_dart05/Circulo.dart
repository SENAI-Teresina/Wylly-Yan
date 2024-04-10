import 'dart:math';

class Circulo {
  double raio;
  String cor;

  Circulo(this.raio, this.cor);

  double area() {
    return pi*this.raio*this.raio;
  }

  double perimetro() {
    return pi*this.raio*2;
  }
}