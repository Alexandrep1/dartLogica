// Mostre os números pares de 0 a 20.

void main(List<String> args) {
  for (int i = 2; i <= 20; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}