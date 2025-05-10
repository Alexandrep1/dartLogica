import 'Funcionario.dart';

class Pj implements Funcionario {
  String nome;
  double salario;
  Pj(this.nome, this.salario);

  double salarioLiquido() {
    return salario;
  }
}
