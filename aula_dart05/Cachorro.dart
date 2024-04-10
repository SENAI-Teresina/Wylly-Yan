import 'Animal.dart';

class Cachorro extends Animal {

  Cachorro(super.nome, super.especie, super.idade);

  void latir() {
    print('Au au');
  }

  void brincar() {
    print('''${super.nome} correu atrás da bolinha.''');
  }
}