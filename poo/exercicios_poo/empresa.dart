/* 3. Classe Empresa
Objetivo: Criar uma classe representando uma empresa simples.

Requisitos:
Crie a classe Empresa com: nome, ramo, numeroFuncionarios.
utilize um construtor

Crie o método resumo() que exibe um texto como:

A empresa ACME atua no ramo de Tecnologia e possui 120 funcionários.

Instancie duas empresas diferentes no main() e chame resumo(). */

class Empresa {

  String nome;
  String ramo;
  int numeroFuncionarios;

  Empresa(this.nome, this.ramo, this.numeroFuncionarios);

  void resumo(){
    print("A empresa $nome ACME atua no ramo de $ramo tecnologia e possui $numeroFuncionarios funcionários.");
  }

  void main(List<String> args) {

    Empresa c1 = new Empresa("ACME", "Tecnologia", 1200);
    Empresa c2 = new Empresa("ACME", "Tecnologia", 90);
    
    c1.resumo();
    c2.resumo();
    
  }
}