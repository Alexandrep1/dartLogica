import 'Carro.dart';
import 'Moto.dart';

void main(List<String> args) {
  
  Carro car = new Carro();
  car.abastecer();
  car.ligar();
  car.desligar();
  car.businar();

  //moto
  Moto cg = Moto();
  cg.ligar();
  cg.desligar();
  cg.abastecer();
}