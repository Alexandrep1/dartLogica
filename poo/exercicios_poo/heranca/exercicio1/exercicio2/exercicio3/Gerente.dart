import 'Funcionario.dart';

class Gerente extends Funcionario{

  Gerente(String nome, int salario) : super (nome, salario);

  double calcularBonus(){
    return salario * 0.20;
  }


}