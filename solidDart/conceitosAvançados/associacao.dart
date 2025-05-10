/* 
ASSOCIAÇÃO
Relacionamento genérico entre classes
uma classe conhece a outra.
exemplo: Professor <--> Departamento
O professor trabalha em um departamento
Departamento conhece professor, mas eles vivem independentemente
 */
/* 
 class Professor {
  String nome;
  Professor(this.nome);
 }

 class Departamento{
  String nome;
  List<Professor> professores = [];

  Departamento(this.nome);

  void adicionarProfessor(Professor p){
    professores.add(p);
    }
 }
 */
 //imagine  duas classes paciente e medico.
 /* 
 um paciente pode ter um medico associado, e o medico pode ter varios pacientes
  */
class Medico {
  String nome;
  Medico(this.nome);
}

class Paciente{
  String nome;
  Medico? medico; //associação opcional
  Paciente(this.nome);

  void associarMedico(Medico m){
    medico = m;
  }

  void mostrarInfos(){
    print("paciente: $nome");
    if(medico != null){
      // o ! após o medico é o operador null assertion operator (negação de nulidade)
      print("Médico: ${medico}");
    } else {
      print("nenhum médico associado");
    }
  }
}