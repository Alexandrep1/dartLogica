import 'Funcionario.dart';

class Gerente extends Funcionario {
  Gerente(String nome, double salario) : super(nome, salario);
  double calcularBonus() {
    return salario * 0.2;
  }
}
