import 'Forma.dart';

class Retangulo implements Forma {
  String forma = "Retângulo";
  double base;
  double altura;
  Retangulo(this.base, this.altura);

  @override
  double calcularArea() {
    return base * altura;
  }
}