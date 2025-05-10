import 'Veiculo.dart';

class Moto extends Veiculo {
  @override
  void ligar() {
    print("Ligando a moto no pedal");
  }

  @override
  void desligar() {
    print("Desligando a moto");
  }

  @override
  void abastecer() {
    print("Abastecendo a moto");
  }

  @override
  void buzinar() {
    print("Pi-pi-pi");
  }
}
