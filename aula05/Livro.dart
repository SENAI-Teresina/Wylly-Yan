class Livro {
  String titulo, autor;
  int numPags;

  Livro(this.titulo, this.autor, this.numPags);

  void imprimir() {
    print('''
      Título: ${this.titulo}
      Autor: ${this.autor}
      NumPags: ${this.numPags}
    ''');
  }
}