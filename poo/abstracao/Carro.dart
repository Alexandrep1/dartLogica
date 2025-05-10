import 'Veiculo.dart';

class Carro extends Veiculo {
  void ligar() {
    print("Ligando o carro com chave");
  }

  void desligar() {
    print("Desligando o carro");
  }

  void abastecer() {
    print("Abastecendo com gasolina");
  }
}
