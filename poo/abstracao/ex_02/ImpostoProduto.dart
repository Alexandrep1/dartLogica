import 'Imposto.dart';

class ImpostoProduto extends Imposto {
  @override
  double calcular(double valor) {
    return valor * 0.07;
  }
}
