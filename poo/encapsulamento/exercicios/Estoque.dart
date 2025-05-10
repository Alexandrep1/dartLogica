/* 
  5. Crie a classe Estoque com um atributo privado _quantidade.
  O setter deve impedir valores negativos.
  O getter retorna a quantidade atual em estoque
 */

class Estoque {
  int _quantidade = 0;

  int get quantidade => _quantidade;

  set quantidade(int valor) {
    if (valor >= 0) {
      _quantidade = valor;
    } else {
      print("Informe um valor positivo");
    }
  }
}
