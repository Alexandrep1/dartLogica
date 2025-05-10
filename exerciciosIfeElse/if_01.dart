// 1 Escreva um programa que receba um número e use um if para verificar se ele é positivo.
import 'dart:io';

void main(List<String> args) {
  stdout.write('Digite um número: ');
  int valor = int.parse(stdin.readLineSync()!);
  if (valor < 0){
    print('O número informado é negativo');
  } else if (valor > 0){
    print('O número informado é positivo');
  } else {
    print('O número informado é ZERO');
  }
}


