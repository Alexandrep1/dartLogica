// 3. Determinar o maior número dentro da matriz.

void main(List<String> args) {
  List<List<int>> matriz = [
    [1, 2, 3],
    [4, 500, 6],
    [7, 8, 9],
  ];
  int maiorNumero = 0;

  for (int linha = 0; linha < matriz.length; linha++) {
    for (int coluna = 0; coluna < matriz[linha].length; coluna++) {
      if (matriz[linha][coluna] > maiorNumero) {
        maiorNumero = matriz[linha][coluna];
      }
    }
  }
  print(maiorNumero);
}
