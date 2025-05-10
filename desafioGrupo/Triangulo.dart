import 'Forma.dart';

class Triangulo implements Forma {
  String forma = "Triângulo";
  double base;
  double altura;
  Triangulo(this.base, this.altura);

  @override
  double calcularArea() {
    return (base * altura) / 2;
  }
}