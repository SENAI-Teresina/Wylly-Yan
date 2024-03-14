class Moto {
  String marca, modelo;
  int cilindrada;

  Moto(this.marca, this.modelo, this.cilindrada);

  void imprimir() {
    print('''
      Marca: ${this.marca}
      Modelo: ${this.modelo}
      Cilindrada: ${this.cilindrada}
    ''');
  }
}