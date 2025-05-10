import 'Veiculo.dart';

class Carro extends Veiculo{


  @override
  void mover() {
    print("acelerando");
    super.mover();
  }
}