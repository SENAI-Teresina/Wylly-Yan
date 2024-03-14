import 'ContaBancaria.dart';

class ContaInvestimento extends ContaBancaria {

  ContaInvestimento(super.numeroConta,super.saldo,super.titular);

  double rendimentoJSimples(taxa, tempo) {
    return super.saldo+(super.saldo*taxa*tempo);
  }

  double rendimentoJComposto(double taxa, tempo) {
    double elevar(double base, exp) {
      for (int i = exp; i > 1;i-- ) {
        base *= base;
      }
      return base;
    }
    return super.saldo*(elevar(taxa+1,tempo));
  }

  void imprimir() {
    print('''
      Número da Conta: ${super.numeroConta}
      Titular: ${super.titular}
      Saldo: ${super.saldo}
    ''');
  }
}