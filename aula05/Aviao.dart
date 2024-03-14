class Aviao {
  String modelo, fabricante;
  int numPassageiros;

  Aviao(this.modelo, this.fabricante, this.numPassageiros);

  void imprimir() {
    print('''
      Modelo: ${this.modelo}
      Fabricante: ${this.fabricante}
      Número de Passageiros: ${this.numPassageiros}
    ''');
  }
}