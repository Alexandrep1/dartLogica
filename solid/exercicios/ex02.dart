/* 
  OCP - Refatore o código para que ele suporte novos cargos sem precisar modificar a classe CalculadoraSalario. 
*/

class CalculadoraSalario {
  double calcular(String cargo) {
    if (cargo == 'gerente') return 5000;
    if (cargo == 'desenvolvedor') return 4000;
    return 0;
  }
}

// Solução respeitando o principío OCP:
abstract class Salario {
  double exibir();
}

class Gerente implements Salario {
  @override
  double exibir() {
    return 5000;
  }
}

class Desenvolvedor implements Salario {
  @override
  double exibir() {
    return 4000;
  }
}

class CalcularSalario {
  double calcularSalario(Salario salario) {
    return salario.exibir();
  }
}

void main(List<String> args) {
  CalcularSalario salario = CalcularSalario();
  print(salario.calcularSalario(Gerente()));
  print(salario.calcularSalario(Desenvolvedor()));

}