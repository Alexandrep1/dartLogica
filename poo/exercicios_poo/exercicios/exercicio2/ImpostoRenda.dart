import 'Abstrato.dart';

class ImpostoRenda implements Abstrato{

  @override
    double calcular(double valor) {
    return valor * 0.07;
  }
}