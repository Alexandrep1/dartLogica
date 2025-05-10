// 7 Faça um programa que leia a temperatura e diga se está frio (abaixo de 15 graus).

void main(List<String> args) {
  int temperatura = 15;

  if(temperatura <= 15){
    print('Está frio');
  } else if (temperatura < 30){
    print('Temperatura agradável');
  } else {
    print('Inferno na terra');
  }
}