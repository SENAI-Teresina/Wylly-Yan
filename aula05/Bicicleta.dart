class Bicicleta {
  String marca, modelo;
  int numMarchas;

  Bicicleta(this.marca, this.modelo, this.numMarchas);

  void imprimir() {
    print('''
      Marca: ${this.marca}
      Modelo: ${this.modelo}
      Número de Marchas: ${this.numMarchas}
    ''');
  }
}