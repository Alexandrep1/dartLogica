import 'Funcionario.dart';

class FuncionarioCLT extends Funcionario {

  FuncionarioCLT(FuncionarioCLT, salarioBruto) : super (salarioBruto);

  void calcularmediaCLT(){

    double DescontoInss = salarioBruto - 0.20;
    double beneficioPlano = salarioBruto + 500;
    salarioBruto = DescontoInss;
    salarioBruto = beneficioPlano;
  
  }

}