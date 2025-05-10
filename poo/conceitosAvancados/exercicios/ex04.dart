/* 
  * Coesão
    - Crie duas versões de uma classe CalculadoraFinanceira: uma com alta coesão (apenas cálculos) 
      e outra com baixa coesão (mistura de funções). 
    - Compare as abordagens.
 */

// Exemplo com baixa coesão:
class CalculadoraFinanceira1 {
  String titular = "";

  double calcularIR(double valor) {
    return valor * 1.15;
  }

  void abrirConta(String titular) {
    print("Criando conta para $titular");
  }

  void exibirTitular(String conta) {
    print("Titular da conta $conta: $titular");
  }
}

// Exemplo com alta coesão: 
class CalculadoraFinanceira2 {
  double calculaIR(double valor) {
    return valor * 1.1;
  }
}

class Conta {
  String titular = "";

  void abrirConta(String titular) {
    print("Criando conta para $titular");
  }

  void exibirTitular(String conta) {
    print("Titular da conta $conta: $titular");
  }
}