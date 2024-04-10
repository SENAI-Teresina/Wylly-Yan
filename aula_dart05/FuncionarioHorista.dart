import 'Funcionario.dart';

class FuncionarioHorista extends Funcionario {
  double horas;
  FuncionarioHorista(super.nome,super.cargo,super.salario, this.horas);

  double calcularSalario() {
    return super.salario*horas;
  }
}