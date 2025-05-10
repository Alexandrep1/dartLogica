// Calcule a soma dos elementos de um list usando foreach.

void main(List<String> args) {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int soma = 0;

  numeros.forEach((numero){
    soma += numero;
  });

  print(soma);

}