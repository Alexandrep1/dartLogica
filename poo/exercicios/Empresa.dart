/* 3. Classe Empresa
Objetivo: Criar uma classe representando uma empresa simples.

Requisitos:
Crie a classe Empresa com: nome, ramo, numeroFuncionarios.
utilize um construtor

Crie o método resumo() que exibe um texto como:

A empresa ACME atua no ramo de Tecnologia e possui 120 funcionários.

Instancie duas empresas diferentes no main() e chame resumo().
 */

class Empresa {
  // atributos:
  String nome;
  String ramo;
  int numeroFuncionarios;

  Empresa(this.nome, this.ramo, this.numeroFuncionarios);

  // método:
  String resumo() {
    return """A empresa '${nome}' atua no ramo '${ramo}' e conta 
    com ${numeroFuncionarios} funcionários""";
  }
}

// main() no mesmo arquivo da Classe apenas para simplificar o exercício
void main(List<String> args) {
  Empresa marketool = new Empresa("MarkeTool", "FinTech", 5);
  Empresa vagaJah = new Empresa("Vaga Já", "Gestão de estacionamentos", 5);

  print(marketool.resumo());
  print("");
  print(vagaJah.resumo());
}
