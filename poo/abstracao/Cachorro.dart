/* 
  Ao estender a classe abstrata Animal, será necessário implementar todos os 
  métodos abstratos que estão assinados na classe superclasse.
 */

import 'Animal.dart';

class Cachorro extends Animal {
  void emitirSom() {
    print('Au-Au');
  }
}
