import './Pj.dart';
import './Clt.dart';

void main(List<String> args) {
  Clt c = new Clt("Pedro", 2350);
  c.exibirDados();
  c.beneficios();

  Pj p = new Pj("João", 1800);
  p.exibirDados();
}
