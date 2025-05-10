/* 4. Classe Livro
Objetivo: Usar strings e inteiros para representar dados de objetos.

Requisitos:
Crie a classe Livro com: titulo, autor, paginas.

Crie o método descricao() que exibe:

"O livro 'Título' foi escrito por Autor e tem X páginas."
 */

class Livro {
  // atributos:
  String? titulo;
  String? autor;
  int? paginas;

  // método:
  String descricao() {
    return "O livro '${titulo}' foi escrito por '${autor}' e tem ${paginas} páginas";
  }
}

// main() no mesmo arquivo da Classe apenas para simplificar o exercício
void main(List<String> args) {
  Livro l1 = new Livro();
  Livro l2 = new Livro();

  l1.titulo = "Pai rico, Pai pobre";
  l1.autor = "Roberto Kyosaki";
  l1.paginas = 216;

  l2.titulo = "Do mil ao milhão";
  l2.autor = "Thiago Nigro";
  l2.paginas = 192;

  print(l1.descricao());
  print("");
  print(l2.descricao());
}
