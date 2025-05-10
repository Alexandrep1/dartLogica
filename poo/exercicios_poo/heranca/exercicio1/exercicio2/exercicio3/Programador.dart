import 'Funcionario.dart';

class Programador extends Funcionario{

Programador(String nome, int salario) : super (nome,salario);

  double calcularBonus(){
    return salario * 0.10;
  }
  
}