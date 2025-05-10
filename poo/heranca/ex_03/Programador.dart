import 'Funcionario.dart';

class Programador extends Funcionario {
  Programador(String nome, double salario) : super(nome, salario);
  double calcularBonus() {
    return salario * 0.1;
  }
}
