import 'Circulo.dart';
import 'Forma.dart';
import 'Retangulo.dart';
import 'Triangulo.dart';

void main(List<String> args) {
  List<Forma> formas = [new Circulo(10), new Triangulo(5, 15), new Retangulo(30, 10)];

  for(var i in formas) {
    print("-> Área do ${i.forma}: ${i.calcularArea().toStringAsFixed(2)}cm²");
  }
}