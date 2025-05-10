import 'Carro.dart';

void main(List<String> args) {
  // para instanciar um objeto de uma classe precisamos usar o operador 'new':
  Carro megane = new Carro();
  megane.modelo = 'Megane grand tour privilege';
  megane.ano = 2009;

  print(megane.apresentar());

  megane.ligar();

  megane.dirigir();

  // instancia da CRV:
  Carro crv = new Carro();
  crv.modelo = 'CRV 2.0';
  crv.ano = 2015;

  print(crv.apresentar());
  crv.ligar();
  crv.dirigir();
}
