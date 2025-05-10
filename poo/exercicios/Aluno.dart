/* 1. Classe Aluno
Objetivo: Praticar atributos simples e método de exibição.

Requisitos:
Crie uma classe Aluno com os atributos: nome, matricula, curso.

Crie o método mostrarDados() que exibe essas informações.

No main(), crie dois objetos Aluno e chame o método.
*/

class Aluno {
  // atributos
  String nome;
  String matricula;
  String curso;

  Aluno(this.nome, this.matricula, this.curso);

  // método:
  String mostrarDados() {
    return "Nome: ${nome} | Matricula: ${matricula} | Curso: ${curso}";
  }
}

// main() no mesmo arquivo da Classe apenas para simplificar o exercício
void main(List<String> args) {
  Aluno gustavo = new Aluno("Gustavo", "0001", "Flutter");
  Aluno eduardo = new Aluno("Eduardo", "0002", "C#");

  print(gustavo.mostrarDados());
  print(eduardo.mostrarDados());
}
