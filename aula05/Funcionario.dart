class Funcionario {
  String nome, cargo;
  double salario;

  Funcionario(this.nome, this.cargo, this.salario);

  void calcularSalarioPorc(pcr) {
    pcr /= 100;
    print('''Antigo salário: ${this.salario}''');
    this.salario +=  this.salario*pcr;
    print('''Novo salário: ${this.salario}''');
  }

  void calcularSalarioReais(reais) {
    print('''Antigo salário: ${this.salario}''');
    this.salario +=  this.salario*reais;
    print('''Novo salário: ${this.salario}''');
  }

  void imprimir() {
    print('''
      Nome: ${this.nome}
      Cargo: ${this.cargo}
      Salário: ${this.salario}
    ''');
  }
}