// Percorra uma lista de 10 números inteiros e exiba apenas os números pares.

void main(List<String> args) {
  List<int> inteiros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (int i = 0; i < inteiros.length; i++) {
    if (inteiros[i] % 2 == 0) {
      print(inteiros[i]);
    }
  }
}