// Faça um programa que percorra um list e calcule a soma de seus elementos.

void main(List<String> args) {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int soma = 0;

  for (int numero in numeros){
    soma += numero;
  }

  print(soma);

}