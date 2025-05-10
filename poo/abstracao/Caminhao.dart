import 'Veiculo.dart';

class Caminhao implements Veiculo {
  @override
  void ligar() {
    print("Ligando caminhão");
  }

  @override
  void desligar() {
    print("Desligando caminhão");
  }

  @override
  void abastecer() {
    print("Abastecendo com Diesel");
  }

  @override
  void buzinar() {
    print("póóó-póóóó");
  }
}
