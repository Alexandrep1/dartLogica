import 'Veiculo.dart';

class Carro extends Veiculo{
  @override
  void ligar(){
    print("ligando o carro com chave");
  }

  @override
  void desligar(){
    print("desligando veiculo");
  }

  @override
  void abastecer() {
    print("abastecendo com gasolina");
  }
}