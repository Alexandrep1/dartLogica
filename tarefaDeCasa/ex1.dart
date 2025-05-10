/* Exercício 1 – Composição + SRP + Alta Coesão
Implemente um sistema onde um Aluno possui 
um Endereco (composição). A classe Aluno deve 
apenas conter dados do aluno, enquanto a lógica 
de impressão do endereço deve estar em uma classe 
separada. Mantenha alta coesão e respeite o princípio 
da responsabilidade única (SRP). */

class Endereco {

  String rua;
  String cidade;
  String cep;
  String estado;

  Endereco(this.rua, this.cidade, this.cep, this.estado);

}

class Aluno {

  String nome = "";
  String matricula = "";
  String idade = "";

  Aluno(this.nome, this.matricula, this.idade);

}

void main(List<String> args) {
  
Endereco ende = Endereco("norberto dias", "blumenau", "213122", "SC");
Aluno aluno = Aluno("Alexandre", "21312", "22");

print("endereço do aluno: ${ende.rua} | cidade do aluno: ${ende.cidade} | cep do aluno: ${ende.cep} | estado do aluno: ${ende.estado}");
print("nome do aluno: ${aluno.nome} | matricula do aluno: ${aluno.matricula} | idade do aluno: ${aluno.idade}");



}