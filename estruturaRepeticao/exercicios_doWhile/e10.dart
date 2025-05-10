// entre 1 e 100 mostre apenas os numeros divisiveis por 4 ou 7 identificando cada um
void main(List<String> args) {
  int numero = 1;

  do {
    if (numero % 4 == 0 && numero % 7 == 0) {
      print('$numero - Divisível por 4 e 7.');
    } else if (numero % 4 == 0) {
      print('$numero - Divisível por 4.');
    } else if (numero % 7 == 0) {
      print('$numero - Divisível por 7.');
    }
    numero++;
  } while (numero < 101);
}