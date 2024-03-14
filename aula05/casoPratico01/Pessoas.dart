class Pessoas {
  String nome, cpf;

  Pessoas(this.nome, this.cpf);

  imprimir() {
    print('''
    Nome: ${this.nome}
    CPF: ${this.cpf}
    ''');
  }
}