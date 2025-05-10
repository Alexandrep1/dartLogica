// 2. Calcular a soma de todos os números de uma matriz.

void main(List<String> args) {
  List<List<int>> matriz = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  int soma = 0;

  for (int linha = 0; linha < matriz.length; linha++) {
    for (int coluna = 0; coluna < matriz[linha].length; coluna++) {
      soma += matriz[linha][coluna];
    }
  }

  print(soma);
  
}
