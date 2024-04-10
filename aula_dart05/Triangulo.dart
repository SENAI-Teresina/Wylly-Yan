import 'dart:io';

class Triangulo {
  double lado1, lado2, lado3;
  Triangulo(this.lado1, this.lado2, this.lado3);

  bool eTriangulo() {
    return ((this.lado1+this.lado2>this.lado3)&&(this.lado2+this.lado3>this.lado1)&&(this.lado1+this.lado3>this.lado2));
  }

  double area() {
    print('Insira a Altura:');
    int h = int.parse(stdin.readLineSync()!);
    return (h*this.lado1)/2;
  }
}