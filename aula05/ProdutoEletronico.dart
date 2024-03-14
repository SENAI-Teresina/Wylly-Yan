class ProdutoEletronico {
  String nome, garantia;
  double preco;

  ProdutoEletronico(this.nome, this.preco, this.garantia);

  void imprimir() {
    print('''
      Nome: ${this.nome}
      Preco: ${this.preco}
      Garanti: ${this.garantia}
    ''');
  }
}