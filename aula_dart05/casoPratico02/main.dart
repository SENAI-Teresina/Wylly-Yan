import 'dart:io';

import 'Produtos.dart';

void main() {

  List<Produtos> produtos = [];
  bool loop = true;

  while (loop) {
    print('''--------
      Bom dia, o que deseja fazer?
    0 - Cadastrar Produto
    1 - Listar Produtos
    2 - Alterar Produto
    3 - Comprar Produto
    Outro - Sair
    ''');
    int escolha = int.parse(stdin.readLineSync()!);
    switch (escolha) {
      case 0:
        print('Insira o nome do produto:');
        String nome = stdin.readLineSync()!;
        print('Insira a quantidade:');
        int qnt = int.parse(stdin.readLineSync()!);
        print('Insira a descricao:');
        String descricao = stdin.readLineSync()!;

        produtos.add(new Produtos(nome, qnt, descricao));
        print('Adicionado com sucesso');
      break;

      case 1:
        print('--- Lista de Produtos:');
        for (var p in produtos) {
          p.imprimir();
        }
      break;

      case 2:
        print('Insira o nome do produto a ser modificado:');
        String nome = stdin.readLineSync()!;
        var id;

        for (var p in produtos) {
          if (nome == p.nome) {
            id = produtos.indexOf(p);
            break;
          }
        }

        print('Insira o nome do produto:');
        String newNome = stdin.readLineSync()!;
        print('Insira a quantidade:');
        int newQnt = int.parse(stdin.readLineSync()!);
        print('Insira a descricao:');
        String newDesc = stdin.readLineSync()!;
        produtos[id].alterarNome(newNome);
        produtos[id].alterarQnt(newQnt);
        produtos[id].alterarDesc(newDesc);
      break;

      case 3:
        print('Insira o nome do produto:');
        String nome = stdin.readLineSync()!;
        print('Insira a quantidade:');
        int qnt = int.parse(stdin.readLineSync()!);

        var id;

        for (var p in produtos) {
          if (nome == p.nome) {
            id = produtos.indexOf(p);
            break;
          }
        }

        produtos[id].alterarQnt(produtos[id].quantidade-qnt);
      break;

      default:
        print('Volte sempre!');
        loop = false;
      break;
    }
  }
}