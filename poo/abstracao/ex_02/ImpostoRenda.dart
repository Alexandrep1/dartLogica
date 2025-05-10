import 'Imposto.dart';

class ImpostoRenda extends Imposto {
  @override
  double calcular(double valor) {
    return valor * 0.15;
  }
}
