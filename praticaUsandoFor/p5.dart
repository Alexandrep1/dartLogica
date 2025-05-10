// Some todos os números de uma lista usando um for e exiba o resultado.

void main(List<String> args) {
  List<int> numeros = [10, 20, 30, 40 , 50];
  int soma = 0;

  for (int i = 0; i < numeros.length; i++) {
    soma += numeros[i];
  }
  print(soma);
}