import 'Abstrato.dart';

class ImpostoProduto implements Abstrato {
  
  @override
    double calcular(double valor1) {
    return valor1 * 0.15;
  }
}

