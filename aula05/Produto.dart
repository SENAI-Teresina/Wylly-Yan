class Produtos {
  String nome;
  int quantidade;
  double preco;

  Produtos(this.nome, this.quantidade, this.preco);

  void imprimir() {
    print('''
    Nome: ${this.nome}
    Quantidade no estoque: ${this.quantidade}
    Preco: ${this.preco}
    ''');
  }
  
  void alterarQnt(int newQnt) {
    this.quantidade = newQnt;
  }
}