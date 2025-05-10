// Multiplicar todos os números de 1 a 10

void main(List<String> args) {
  int i = 1;
  int calculo = 1;

  while (i < 11) {
    calculo *= i;
    i++;
  }

  print(calculo);

}