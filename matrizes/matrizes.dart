// ignore_for_file: unused_local_variable
import 'dart:math';

/**
 * O que são Matrizes???
 * -- São Arrays de Arrays
 */

void main(List<String> args) {
  // exemplo 01 - matriz de números
  List<List<int>> matriz = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8],
  ];

  // acessando elementos
  // print(matriz[0][1]); // exibe o elemento da primeira linha e segunda coluna

  // adicionar elementos no list pai
  // matriz.add([10, 11, 12, 13]);
  // print(matriz);

  // adicionar elementos em uma matriz especifica
  // matriz[1].add(9); // adiciona um item no array já existente.
  // print(matriz);

  // editando um valor específico na matriz
  // matriz[0][0] = 100;
  // print(matriz);

  // iterando sobre uma matriz com laço for
  // for (int i = 0; i < matriz.length; i++) {
  //   print('Matriz $i:');
  //   for (int b = 0; b < matriz[i].length; b++) {
  //     print('Linha [$i][$b] => ${matriz[i][b]}');
  //   }
  //   print('');
  // }

  // iterando utilizando for-in
  // int i = 0;
  // for (var linha in matriz) {
  //   int j = 0;
  //   for (var elemento in linha) {
  //     print('Linha $i: $linha  Coluna $j: $elemento');
  //     j++;
  //   }
  //   i++;
  // }

  // transformando dados de matrizes
  // List<List<int>> novaMatriz = matriz.map((linha) {
  //   return linha.map((elemento) {
  //     return elemento * 2;
  //   }).toList();
  // }).toList();

  // print(matriz);
  // print(novaMatriz);

  // criando matriz dinamicamente
  int linhas = 4;
  int colunas = 5;
  int maxValue = 100;

  Random random = Random();
  /**
   * (_) é o underscoper - que no dart é usado como nome de variável anonima ou
   placeholder
   * neste caso ele tem o index de cada elemento
   * é útil para evitar warnings no código. Já que o dart avisa quando 
   declaramos variáveis que não usamos.
   * o _ diz ao compilador: sim, eu sei que há um indice aqui mas não preciso dele
   */
  List<List<int>> matrizDinamica = List.generate(
    linhas, (_) => List.generate(colunas, (_) => random.nextInt(maxValue) + 1),
  );

  // exibindo a matriz
  for (var linha in matrizDinamica) {
    print(linha);
  }

  // notas de alunos
  // List<String> alunos = ['Maria', 'José', 'João'];

  // List<List<double>> notas = [
  //   [8.5, 9.0, 10],
  //   [7.0, 5.5, 3.0],
  //   [10, 7.5, 6.0],
  // ];

  // for (int a = 0; a < notas.length; a++) {
  //   double soma = 0;
  //   for (int b = 0; b < notas[a].length; b++) {
  //     soma += notas[a][b];
  //   }
  //   double media = soma / notas[a].length;
  //   print("Aluno: ${alunos[a]} -> Média: ${media.toStringAsFixed(2)}");
  // }
}
