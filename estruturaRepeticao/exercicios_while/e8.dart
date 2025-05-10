// Exibir os números que terminam em 5 entre 5 e 100

void main(List<String> args) {
  int i = 5;

  while (i < 101) {

    if (i % 10 == 5) {
      print(i);
    }

    i += 5;

  }
}