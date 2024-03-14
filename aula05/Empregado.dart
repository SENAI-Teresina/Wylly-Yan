class Empregado {
  String nome, cargo;
  double salario;

  Empregado(this.nome, this.cargo, this.salario);

  void calcularBonus(pcr) {
    pcr /= 100;
    print('''Sem bônus: ${this.salario}''');
    this.salario +=  pcr;
    print('''Com bônus: ${this.salario}''');
  }

  void imprimir() {
    print('''
      Nome: ${this.nome}
      Cargo: ${this.cargo}
      Salário: ${this.salario}
    ''');
  }
}