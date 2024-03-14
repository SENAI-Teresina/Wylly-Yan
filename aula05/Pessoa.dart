class Pessoa {
  String nome;
  double altura, peso;

  Pessoa(this.nome, this.altura, this.peso);

  void imprimir() {
    print('''
      Nome: ${this.nome}
      Altura: ${this.altura}
      Peso: ${this.peso}
    ''');
  }

  double imc() {
    return (this.peso/(this.altura*this.altura));
  }
}