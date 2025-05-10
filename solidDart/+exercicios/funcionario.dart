abstract class Funcionario{
  double calcularSalario();
}

class Gerente implements Funcionario {
  @override
  double calcularSalario() => 5000;
  }

class Desenvolvedor implements Funcionario{
  @override
  double calcularSalario() => 4000;
}

class CalculadoraSalario{
  double calcular(Funcionario Funcionario){
    return Funcionario.calcularSalario();
  }
  
}