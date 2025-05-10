import '../Veiculo.dart';

class Caminhao implements Veiculo{

@override
  void ligar() {
    
  }
@override
  void desligar() {
    print("puxando afogador para desligar");
  }
@override
  void abastecer() {
    print("abastecer com diesel");
  }
@override
  void businar() {
    print("pó pó");
  }
}