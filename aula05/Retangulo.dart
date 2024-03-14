class Retangulo {
  double comprimento, largura;
  String cor;

  Retangulo(this.comprimento, this.largura, this.cor);

  double area() {
    return this.comprimento*this.largura;
  }

  double perimetro() {
    return 2*(this.comprimento+this.largura);
  }
}