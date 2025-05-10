import 'Pessoa.dart';

class Aluno extends Pessoa{

  int matricula;

  Aluno(String nome, int idade, this.matricula) : super (nome, idade);

  void exibirDados(){
    print("nome do aluno: $nome | idade do aluno: $idade | matricula do aluno: $matricula");
  }
}

void main(List<String> args) {
  
  Aluno aluno = new Aluno("alexandre", 24, 2203);
  aluno.exibirDados();

}