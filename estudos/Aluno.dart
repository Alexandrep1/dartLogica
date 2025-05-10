class Aluno {
  String nome;
  int nota1;
  int nota2;
  double media;

  Aluno(this.nome, this.nota1, this.nota2, this.media);

  void mostrarResultado() {
    media = (nota1 + nota2) / 2;
    print("Média de $nome: $media");
  }

  void aprovado() {
    if (media >= 6) {
      print("$nome aprovado!");
    } else {
      print("$nome reprovado!");
    }
  }
}

class Exibir extends Aluno {
  Exibir(String nome, int nota1, int nota2, double media) : super(nome, nota1, nota2, media);

  @override
  void mostrarResultado() {
    super.mostrarResultado();
    super.aprovado();
  }
}

void main() {

  var aluno = Exibir("Alexandre", 7, 5, 0.0); 
  aluno.mostrarResultado();
}
