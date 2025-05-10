/* 
  Utilizando 'interface' através do 'implements'.
  Quando usamos implements, a classe é abrigada a implementar tudo que existe
  na classe abstrata, incluindo métodos já implementados.
*/

import 'Impressora.dart';

class Epson implements Impressora {
  void imprimir() {
    print("imprimindo na Epson");
  }
  
}
