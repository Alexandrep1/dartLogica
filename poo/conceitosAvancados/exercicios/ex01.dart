/* 
  * Associação:
    - Crie duas classes: Livro e Autor. Um livro tem um autor, e um autor pode ter vários livros.
    - Exiba o nome do autor ao listar um livro.
 */

class Livro {
  String nome;
  Livro(this.nome);
}

class Autor {
  String nome;
  List<Livro> livros = [];
  Autor(this.nome);

  void adicionarLivro(Livro livro) {
    livros.add(livro);
  }

  void listarLivros() {
    for(var i in livros) {
      print("Livro: ${i.nome} | Autor: $nome");
    }
  }

}

void main(List<String> args) {
  Autor autor = new Autor("Gustavo Petry");
  autor.adicionarLivro(Livro("Aprenda a programar em 5 dias"));
  autor.adicionarLivro(Livro("Seja foda na tecnologia"));
  autor.listarLivros();
}