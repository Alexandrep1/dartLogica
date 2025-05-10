class Livro {

  String? titulo;
  String? autor;

  Livro(this.titulo, this.autor);
  
}

class Biblioteca {
  
  List<Livro> livros = [];

  void adicionarLivro(Livro livro){
    adicionarLivro(livro);
    print("livro adicionado ${livro.titulo}");
  }

  void listarLivros(){
    for (var lista in livros){
      print("titulo ${lista.titulo} | autor: ${lista.autor}");
    }
  }
}

void main(List<String> args) {
  
Biblioteca biblio = new Biblioteca();

biblio.adicionarLivro(Livro("o hobbit" , "alexandre"));

biblio.listarLivros();

}