class Livro {

  String titulo;
  String autor;

  Livro(this.titulo, this.autor);

}

class Biblioteca {

  List<Livro> livros = [];

  void adicionarLivro(Livro livro){
    livros.add(livro);
  }

  void listarLivro(){
    for(var livros in livros)
    print("titulo: ${livros.titulo} autor: ${livros.autor}");
  }
  
}