class Produtos {
  String nome, descricao;
  int quantidade;

  Produtos(this.nome, this.quantidade, this.descricao);

  void imprimir() {
    print('''
    Nome: ${this.nome}
    Quantidade no estoque: ${this.quantidade}
    Descricao: ${this.descricao}
    ''');
  }

  void alterarNome(String newNome) {
    this.nome = newNome;
  }

  void alterarQnt(int newQnt) {
    this.quantidade = newQnt;
  }

  void alterarDesc(String newDesc) {
    this.descricao = newDesc;
  }
}