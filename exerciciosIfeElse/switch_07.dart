// 7. Faça um programa que identifique o tipo de triângulo com base em uma entrada de texto.
import 'dart:io';

void main(List<String> args) {
  stdout.write('Informe um valor positivo para L1: ');
  double l1 = double.parse(stdin.readLineSync()!);
  stdout.write('Informe um valor positivo para L2: ');
  double l2 = double.parse(stdin.readLineSync()!);
  stdout.write('Informe um valor positivo para L3: ');
  double l3 = double.parse(stdin.readLineSync()!);

  if (l1 == l2 && l2 == l3 && l3 == l1) {
    print('O triângulo informado é Equilátero'); // todos os lados iguais
  } else if (l1 == l2 && l2 != l3 || l3 == l1 && l2 != l3 || l2 == l3 && l3 != l1) {
    print('O triângulo informado é Isósceles'); // 2 lados iguais e 1 diferente
  } else {
    print('O triângulo informado é Escaleno'); // todos os lados diferentes
  }

}