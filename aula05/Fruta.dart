class Fruta {
  String nome, cor, sabor;

  Fruta(this.nome, this.cor, this.sabor);

  void imprimir() {
    print('''
      Nome: ${this.nome}
      Cor: ${this.cor}
      Sabor: ${this.sabor}
    ''');
  }
}