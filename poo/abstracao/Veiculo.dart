/**
 Em classes abstratas os métodos assinados dizem o que deve ser feito, mas
 não dizem como os métodos devem ser implementados.
 */

abstract class Veiculo {
  void ligar();
  void desligar();
  void abastecer();

  void buzinar() {
    print("Bi-bi-bi");
  }
}
