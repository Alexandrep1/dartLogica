/* 
AGREGAÇÃO
é um tipo relacionamento entre classes na POO em que uma "tem" outra classe, mas sem
dependência total de existência.
é um relacionamento todo-parte onde o objeto "parte" pode existir independentemente do objeto
"todo"
CARACTERÍSTICAS
representa uma relação fraca de composição
o objeto agregado não é destruido se o objeto que o contém for destruido
exemplo: um "curso" tem "alunos" ms os alunos continuam existindo mesmo fora do curso
 */

 class Aluno{
  String nome;

  Aluno(this.nome);

 }

 class Curso {
  String nome;
  List<Aluno> alunos = [];

  Curso(this.nome);

  void matricular(Aluno aluno){
    alunos.add(aluno);
  }
 }

 //curso tem alunos, mas os alunos podem existir sem o curso. Isso é agregação