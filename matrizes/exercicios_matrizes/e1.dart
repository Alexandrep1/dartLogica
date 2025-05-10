// 1. Criar uma matriz 3x3 e imprimir seus elementos.

void main(List<String> args) {
  List<List<int>> matriz = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  for (int i = 0; i < matriz.length; i++) {
    print('Linha $i: ${matriz[i]}');
    for (int j = 0; j < matriz[i].length; j++) {
      print('- Coluna $j: ${matriz[i][j]}');
    }
    print('');
  }
}
