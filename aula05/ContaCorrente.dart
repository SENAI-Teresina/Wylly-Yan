import 'ContaBancaria.dart';

class ContaCorrente extends ContaBancaria {

  ContaCorrente(super.numeroConta,super.saldo,super.titular);

  double taxaManutencao(juros) {
    return super.saldo*juros/100;
  }

  void imprimir() {
    print('''
      Número da Conta: ${super.numeroConta}
      Titular: ${super.titular}
      Saldo: ${super.saldo}
    ''');
  }
}