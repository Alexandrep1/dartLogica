/* 1. Classe Aluno
Objetivo: Praticar atributos simples e método de exibição.

Requisitos:
Crie uma classe Aluno com os atributos: nome, matricula, curso.

Crie o método mostrarDados() que exibe essas informações.

No main(), crie dois objetos Aluno e chame o método. */

class Aluno {

String? nome;
String? matricula;
String curso = '';

void mostrarDados(){
  print("nome $nome, matricula $matricula, curso $curso");
  }

}
void main(List<String> args) {
  
  Aluno aluno1 = new Aluno();
  aluno1.nome = "maria";
  aluno1.matricula = "1234/2025";
  aluno1.curso = "flutter";

  Aluno aluno2 = new Aluno ();
  aluno2.nome = "alekinho";
  aluno2.matricula = "2134/2025";
  aluno2.curso = "java";
}