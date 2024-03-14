class VeiculoTerrestre {
  String marca, modelo;
  int anoFabric;

  VeiculoTerrestre(this.marca, this.modelo, this.anoFabric);

  void imprimir() {
    print('''
      Marca: ${this.marca}
      Modelo: ${this.modelo}
      Ano de Fabricação: ${this.anoFabric}
    ''');
  }
}