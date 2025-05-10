// Faça um programa que exiba os múltiplos de 3 entre 1 e 30.
void main(List<String> args) {
  for (int i = 1; i <= 30; i++) {
    if (i % 3 == 0) {
      print(i);
    }
  }
}