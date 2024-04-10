class Comodo {
  String nome;
  double area;

  Comodo(this.nome,this.area);

  double calcAreaParede(base, altura) {
    return base * altura;
  }

  void imprimir() {
    print('''
      Nome: ${this.nome}
      Area: ${this.area}
    ''');
  }
}