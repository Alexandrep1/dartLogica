import 'Funcionario.dart';

class Pj extends Funcionario {
  Pj(String nome, double salarioBase) : super(nome, salarioBase);

  double salarioLiquido() {
    return salarioBase;
  }
}
