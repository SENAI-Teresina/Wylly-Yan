class ContaBancaria {
  String numeroConta, titular;
  double saldo;

  ContaBancaria(this.numeroConta, this.saldo, this.titular);

  void sacar(reais) {
    this.saldo -= reais;
  }

  void depositar(reais) {
    this.saldo += reais;
  }
}