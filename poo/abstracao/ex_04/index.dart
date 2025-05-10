import 'Clt.dart';
import 'Pj.dart';

void main(List<String> args) {
  Clt c = new Clt("Gustavo", 4500);
  c.beneficios();
  print("Salário líquido do ${c.nome}: ${c.salarioLiquido()}");

  Pj p = new Pj("Eduardo", 5200);
  print("Salário líquido do ${p.nome}: ${p.salarioLiquido()}");
}
