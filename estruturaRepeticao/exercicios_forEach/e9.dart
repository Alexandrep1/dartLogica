// Crie um programa que soma apenas os números positivos de um list.

void main(List<String> args) {
  List<int> numeros = [-1, -2, -3, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int soma = 0;

  numeros.forEach((numero){
    if (numero > 0){
      soma += numero;
    }
  });

  print(soma);

}