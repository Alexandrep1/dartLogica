// Contar quantos números entre 1 e 100 são divisíveis por 4

void main(List<String> args) {
  int i = 1;
  int contador = 0;

  while (i < 101) {
    if (i % 4 == 0) {
      contador += 1;
    }

    i++;
  }

  print(contador);

}