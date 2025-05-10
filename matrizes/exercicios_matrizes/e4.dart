// 4. Multiplicar duas matrizes 2x2.

void main(List<String> args) {
  List<List<int>> matriz_01 = [
    [10, 20],
    [30, 40],
  ];

  List<List<int>> matriz_02 = [
    [1, 2],
    [3, 4],
  ];

  List<List<int>> matrizResultado = [
    [0, 0],
    [0, 0],
  ];

  for (int linha = 0; linha < matriz_01.length; linha++) {
    for (int coluna = 0; coluna < matriz_01[linha].length; coluna++) {
      matrizResultado[linha][coluna] =
          matriz_01[linha][coluna] * matriz_02[linha][coluna];
    }
  }
  print(matrizResultado);
}
