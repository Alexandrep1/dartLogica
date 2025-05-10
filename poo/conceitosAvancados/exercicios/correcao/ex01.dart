class Autor {
  final String nome;
  final List<Livro> livros = [];
  Autor(this.nome);

  void adicionarLivro(Livro livro) => livros.add(livro);
}

class Livro {
  final String titulo;
  final Autor autor;
  Livro(this.titulo, this.autor);

  void exibir() => print("Livro: $titulo | Autor: ${autor.nome}");
}

// Exemplo de uso:
void main(List<String> args) {
  Autor a1 = new Autor("Gustavo");
  Livro l1 = new Livro("Como influenciar pessoas", a1);
  Livro l2 = new Livro("O mundo de Sohpia", a1);

  l1.exibir();
  l2.exibir();

  a1.adicionarLivro(l1);
  a1.adicionarLivro(l2);

  print("\n* Livros do autor: ${a1.nome}");
  for(var i in a1.livros) {
    print(" - Livro: ${i.titulo}");
  }
}