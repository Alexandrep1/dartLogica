/* 
  ISP -> INTERFACE SEGREGATION PRINCIPLE
 */

/* 
  Exemplo violando o princípio ISP:
  - A classe Robo é forçada a implementar o método comer, isso viola o princípio
 */
abstract class Funcionario {
  void trabalhar();
  void comer();
}

class Robo implements Funcionario {
  @override
  void trabalhar() {
    print("Robô trabalhando");
  }

  @override
  void comer() {
    throw Exception("Robôs não comem");
  }
}

/* 
  Solução respeitando o principío ISP:
  - Interfaces menores: cada classe implementa apenas o que precisa
 */
abstract class Trabalhador {
  void trabalhar();
}

abstract class Alimentador {
  void comer();
}

class Roboo implements Trabalhador {
  @override
  void trabalhar() {
    print("Robô trabalhando");
  }
}

// Duas interfaces sendo implementadas na classe Humano
class Humano implements Trabalhador, Alimentador {
  @override
  void trabalhar() {
    print("Humano Trabalhando!");
  }

  @override
  void comer() {
    print("Humano Comendo!");
  }
}

