import 'Pessoas.dart';

class Clientes extends Pessoas {
  List<String> produtos = [];

  Clientes(super.nome, super.cpf);

  void fazerCompra(String produto) {
    produtos.add(produto);
  }

  @override
  void imprimir() {
    print('''
    Nome: ${this.nome}
    CPF: ${this.cpf}
    Produtos: ${this.produtos}
    ''');
  }
}