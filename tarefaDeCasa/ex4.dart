/* Exercício 4 – Composição + ISP + Acoplamento
Crie um sistema com Funcionario e Robô. Ambos trabalham, mas apenas o Funcionario faz pausas. Divida
 as interfaces corretamente para que cada classe implemente apenas o que usar. 
 Use composição quando necessário e reduza acoplamento. */

 abstract class trabalhando1{

 void trabalhando(){}
 }

abstract class pausa1 {

  void pausa(){
  print("fazendo uma pausa");
   }
  }
 

 class Funcionario implements trabalhando1, pausa1{

  @override
  void trabalhando() {
    print("funcionário está trabalhando");
  }

  @override
  void pausa() {
    print("funcionário está no intervalo");
  }

 }

 class Robo implements trabalhando1{
  @override
  void trabalhando() {
    print("robo está trabalhando");
  }
 }


void main(List<String> args) {
  

Funcionario func = Funcionario();
Robo robo = Robo();

func.trabalhando();
func.pausa();
robo.trabalhando();



}
