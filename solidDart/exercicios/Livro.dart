class Autor {
  String nome;
  List<Livro> livros = [];

  Autor(this.nome);

  void adicionarLivro(Livro livro) {
    livros.add(livro);
  }
}

class Livro{
  String titulo;
  Autor autor;

  Livro(this.titulo, this.autor) {
    autor.adicionarLivro(this);
  }

  void exibirInformacoes() {
    print('Livro: $titulo');
    print('Autor: ${autor.nome}');
  }
}

void main() {

  Autor autor1 = Autor("Alexandre");
  Livro livro1 = Livro("hobbit", autor1);
  Livro livro2 = Livro("Memórias Póstumas de Brás Cubas", autor1);

  livro1.exibirInformacoes();
  livro2.exibirInformacoes();

  print("\nLivros do autor: ${autor1.nome}");
  for(var livro in autor1.livros){
    print("Livro: ${livro.titulo}");
  }

  }

