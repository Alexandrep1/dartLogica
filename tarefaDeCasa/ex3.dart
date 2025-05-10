/* Exercício 3 – Agregação + OCP + Coesão
Crie uma classe Curso que agrega vários Modulos. Cada Modulo tem um método calcularNota().
Permita que novos tipos de módulo sejam criados sem precisar modificar 
a classe Curso. Use o princípio aberto/fechado (OCP). */

abstract class Modulo {
  double calcularNota();
}

class CursoIngles implements Modulo {
  final double nota1;
  final double nota2;

  CursoIngles(this.nota1, this.nota2);

  @override
  double calcularNota() {
    return (nota1 + nota2) / 2;
  }
}

class CursoMatematica implements Modulo {
  final double nota1;
  final double nota2;

  CursoMatematica(this.nota1, this.nota2);

  @override
  double calcularNota() {
    return (nota1 + nota2) / 2;
  }
}

void main(List<String> args) {
  CursoIngles ing = CursoIngles(10, 6);
  CursoMatematica mat = CursoMatematica(7, 3);

  print("Média de inglês: ${ing.calcularNota()}");
  print("Média de matemática: ${mat.calcularNota()}");
}
