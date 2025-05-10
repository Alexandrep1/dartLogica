// Use um while para percorrer uma lista e exibir seus elementos um por um.

void main(List<String> args) {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int i = 0;

  while(i < numeros.length) {
    print(numeros[i]);
    i++;
  }
}