import 'dart:math';
import 'Forma.dart';

class Circulo implements Forma{
    String forma = "Círculo";
    double raio;
    Circulo(this.raio);

    @override
  double calcularArea() {
    return pi * raio * raio;
  }
}