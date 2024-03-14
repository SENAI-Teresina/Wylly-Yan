class Celular {
  String marca, modelo, sistemaOperacional;

  Celular(this.marca, this.modelo, this.sistemaOperacional);

  void imprimir() {
    print('''
      Marca: ${this.marca}
      Modelo: ${this.modelo}
      SO: ${this.sistemaOperacional}
    ''');
  }
}