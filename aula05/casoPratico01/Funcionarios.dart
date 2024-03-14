import 'Pessoas.dart';

class Funcionarios extends Pessoas {
  String cargo;
  Funcionarios(super.nome, super.cpf, this.cargo);

  @override
  void imprimir() {
    print('''
    Nome: ${this.nome}
    CPF: ${this.cpf}
    Cargo: ${this.cargo}
    ''');
  }
}