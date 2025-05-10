import 'Gerente.dart';
import 'Programador.dart';

void main(List<String> args) {
  
  Gerente ge = Gerente("alexandre", 7000);
  Programador prog = Programador("xande", 5000);

  print("${ge.nome} tem ${ge.calcularBonus()} de bonus");
  print("${prog.nome} tem ${prog.calcularBonus()} de bonus");

}