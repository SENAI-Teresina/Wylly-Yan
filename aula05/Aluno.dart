class Aluno {
  String nome, curso;
  int idade;
  Aluno(this.nome, this.idade, this.curso);

  void imprimir() {
    print(
    '''
    Nome: ${this.nome}
    Idade: ${this.idade}
    Curso: ${this.curso}
    ''');
  }
}