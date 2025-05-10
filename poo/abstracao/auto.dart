import 'Caminhao.dart';
import 'Carro.dart';
import 'Moto.dart';

void main(List<String> args) {
  Carro car = new Carro();
  car.abastecer();
  car.ligar();
  car.desligar();
  car.buzinar();

  Moto cg = new Moto();
  cg.ligar();
  cg.buzinar();
  cg.desligar();
  cg.abastecer();

  Caminhao truck = new Caminhao();
  truck.ligar();
  truck.buzinar();
  truck.desligar();
  truck.abastecer();
}
