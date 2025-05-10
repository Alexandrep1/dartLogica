/* 
  * ASSOCIAÇÃO:
    - relacionamento genérico entre classes
    - uma classe conhece a outra
    * Exemplo:
      - Professor <--> Departamento
      - o professor trabalha em um departamento
      - departamento conhece professor, mas eles vivem independentemente
 */

// Exemplo 01:
class Professor {
  String nome;
  Professor(this.nome);
}

class Departamento {
  String nome;
  List<Professor> professores = [];

  Departamento(this.nome);

  void adicionarProfessor(Professor p) {
    professores.add(p);
  }
}

/* 
  * Exemplo 02:
    - imagine duas classes "Paciente" e "Médico"
    - um paciente pode ter um médico associado, e o médico pode ter vários
      pacientes associados.
*/
class Medico {
  String nome;
  Medico(this.nome);
}

class Paciente {
  String nome;
  Medico? medico; // associação opcional;
  Paciente(this.nome);

  void associarMedico(Medico m) {
    medico = m;
  }

  void mostrarInfos() {
    print("Paciente: $nome");
    if (medico != null) {
      /* O'!' após o médico é o operador 'null assertion operator'
        (negação de nulidade) */
      print("Médico: ${medico!.nome}");
    } else {
      print("Nenhum médico associado");
    }
  }
}

void main(List<String> args) {
  Paciente p = new Paciente("Gustavo");
  p.associarMedico(new Medico('Luana'));
  p.mostrarInfos();
}
