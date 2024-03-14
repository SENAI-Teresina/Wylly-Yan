class Estudante {
  String nome, matricula, curso;

  Estudante(this.nome, this.matricula, this.curso);

  void imprimir() {
    print('''
      Nome: ${this.nome}
      Matricula: ${this.matricula}
      Curso: ${this.curso}
    ''');
  }

  double calcMedia(List<double> notas) {
    double media=0;
    for (double nota in notas) {
      media+=nota;
    }
    media /= notas.length;
    return media;
  }
}