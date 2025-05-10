// 5. Contar quantos números pares e ímpares há na matriz.

void main(List<String> args) {
  List<List<int>> matriz = [
    [01, 02, 03, 04],
    [05, 06, 07, 08],
    [09, 10, 11, 12],
    [13, 14, 15, 16],
  ];
  int qtdPares = 0;
  int qtdImpares = 0;

  for (int linha = 0; linha < matriz.length; linha++) {
    for (int coluna = 0; coluna < matriz[linha].length; coluna++) {
      if (matriz[linha][coluna] % 2 == 0) {
        qtdPares++;
      } else {
        qtdImpares++;
      }
    }
  }
  print(
    'Na matriz existem $qtdPares números pares, e $qtdImpares números ímpares',
  );

}
