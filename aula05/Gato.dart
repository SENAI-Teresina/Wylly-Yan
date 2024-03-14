import 'Animal.dart';

class Gato extends Animal {

  Gato(super.nome, super.especie, super.idade);

  void miar() {
    print('Miaau');
  }

  void dormir() {
    print('''${super.nome} fell as sleep.''');
  }
}