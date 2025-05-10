/* 
Crie duas versões de uma classe CalculadoraFinanceira: uma com alta coesão
(apenas cálculos) e outra com baixa coesão (mistura de funções). Compare as abordagens.

 */

class CalculadoraAltaCoesao {

double calculo(double valor){
  return valor * 1.15;
}

void mandarEmail(){
  print("enviando email...");
}

double calculoJuros(double valor1){
  return valor1 * 2.0;
}

void receberEmail(){
  print("recebendo email...");
}

}
class CalculadoraBaixaCoesao extends CalculadoraAltaCoesao {

void executarCalculo(){

print("mostrando calculo algo.. ${calculo}");
}

@override
  void mandarEmail() {
    print("enviando email");
  }

void executarCalculo1(){
print("mostrando calculo de juros de algo ${calculo}");
}

@override
  void receberEmail() {
    print("recebendo email");
  }
}

void main() {
  
CalculadoraAltaCoesao alta = CalculadoraAltaCoesao();
print("calculo sem nenhum valor: ${alta.calculo(200)}");
print("calculo com juros: ${alta.calculoJuros(10)}");

alta.mandarEmail();
alta.receberEmail();




}