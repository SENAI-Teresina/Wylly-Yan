class Dvd {
  String titulo, diretor;
  double duracao;

  Dvd(this.titulo, this.duracao, this.diretor);

  void imprimir() {
    print('''
      Título: ${this.titulo}
      Diretor: ${this.diretor}
      Duracao: ${this.duracao}
    ''');
  }
}