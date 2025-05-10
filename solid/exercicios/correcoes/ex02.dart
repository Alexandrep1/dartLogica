abstract class Funcionario {
  double calcularSalario();
}

class Gerente implements Funcionario {
  @override
  double calcularSalario() => 5000;
}

class Desenvolvedor implements Funcionario {
  @override
  double calcularSalario() => 4000;
}

class CalculadoraSalario {
  double calcular(Funcionario funcionario) => funcionario.calcularSalario();
}

void main(List<String> args) {
  CalculadoraSalario calc = new CalculadoraSalario();
  calc.calcular(Gerente());
  calc.calcular(Desenvolvedor());
}
