class Animal {
  String nome, especie;
  int idade;

  Animal(this.nome, this.especie, this.idade);

  void imprimir() {
    print('''
      Nome: ${this.nome}
      Espécie: ${this.especie}
      Idade: ${this.idade}
    ''');
  }
}