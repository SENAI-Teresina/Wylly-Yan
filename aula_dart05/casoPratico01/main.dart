import 'dart:io';

import 'Clientes.dart';
import 'Funcionarios.dart';

void main() {

  List<Clientes> clientes = [];
  List<Funcionarios> funcionarios = [];
  bool loop = true;

  while (loop) {
    print('''--------
      Bom dia, o que deseja fazer?
    0 - Cadastrar Cliente
    1 - Listar Clientes
    2 - Fazer Compra
    3 - Cadatrar Funcionário
    4 - Listar Funcionários
    Outro - Sair
    ''');
    int escolha = int.parse(stdin.readLineSync()!);
    switch (escolha) {
      case 0:
        print('Insira o nome:');
        String nome = stdin.readLineSync()!;
        print('Insira o CPF:');
        String cpf = stdin.readLineSync()!;

        clientes.add(new Clientes(nome, cpf));
        print('Adicionado com sucesso');
      break;

      case 1:
        print('--- Lista de clientes:');
        for (var p in clientes) {
          p.imprimir();
        }
      break;

      case 2:
        print('Insira o nome do comprador:');
        String nome = stdin.readLineSync()!;
        print('Insira o nome do produto:');
        String produto = stdin.readLineSync()!;
        var clienteComprador;

        for (var c in clientes) {
          if (c.nome == nome) {
            clienteComprador = c;
            break;
          }
        }
        clientes[clientes.indexOf(clienteComprador)].fazerCompra(produto);
      break;

      case 3:
        print('Insira o nome:');
        String nome = stdin.readLineSync()!;
        print('Insira o CPF:');
        String cpf = stdin.readLineSync()!;
        print('Insira o cargo:');
        String cargo = stdin.readLineSync()!;

        funcionarios.add(new Funcionarios(nome, cpf, cargo));
        print('Adicionado com sucesso');
      break;

      case 4:
        print('--- Lista de Funcionarios:');
        for (var f in funcionarios) {
          f.imprimir();
        }
      break;

      default:
        print('Volte sempre!');
        loop = false;
        break;
    }
  }
}