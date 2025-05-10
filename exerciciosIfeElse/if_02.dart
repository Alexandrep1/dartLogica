// 2 Faça um programa que verifica se um número é par ou ímpar.
import 'dart:io';

void main(List<String> args) {
  stdout.write('Informe um valor numérico inteiro: ');
  int numero = int.parse(stdin.readLineSync()!);

  if (numero % 2 == 0){
    print('O número informado é PAR');
  } else {
    print('O número informado é ÍMPAR');
  }
}