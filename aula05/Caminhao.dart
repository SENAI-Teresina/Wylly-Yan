import 'VeiculoTerrestre.dart';

class Caminhao extends VeiculoTerrestre {
  double capacidadeCarga;
  String tipoCombustivel;

  Caminhao(super.marca,super.modelo,super.anoFabric,this.capacidadeCarga,this.tipoCombustivel);

  void imprimir() {
    print('''
      Marca: ${super.marca}
      Modelo: ${super.modelo}
      Ano de Fabricação: ${super.anoFabric}
      Capacidade de carga: ${this.capacidadeCarga} kg
      Tipo de Combustível: ${this.tipoCombustivel}
    ''');
  }
}