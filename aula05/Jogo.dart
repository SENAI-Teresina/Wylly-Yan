class Jogo {
  String nome, genero, plataforma;

  Jogo(this.nome, this.genero, this.plataforma);

  void imprimir() {
    print('''
      Nome: ${this.nome}
      Gênero: ${this.genero}
      Plataforma: ${this.plataforma}
    ''');
  }
}