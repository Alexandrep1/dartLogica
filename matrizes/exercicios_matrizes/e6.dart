// 6. Gerar uma matriz 3x3 com números aleatórios de 1 a 100.

import 'dart:math';

void main(List<String> args) {
  int linhas = 3;
  int colunas = 3;
  int maxValue = 100;

  Random random = Random();
  List<List<int>> matrizRandom = List.generate(
    linhas,
    (_) => List.generate(colunas, (_) => random.nextInt(maxValue) + 1),
  );
  print(matrizRandom);
}
