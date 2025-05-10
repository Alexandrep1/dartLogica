// 10 Crie um programa que valide se um número digitado é um ano bissexto.

import 'dart:io';

void main(List<String> args) {
  stdout.write('Informe um Ano, e verifique se é, ou não, um ano Bissexto: ');
  int ano = int.parse(stdin.readLineSync()!);

  if (ano % 400 == 0 || (ano % 4 == 0 && ano % 100 != 0)) {
    print('O ano informado "$ano", É um ano bissexto');
  } else {
    print('O ano informado "$ano", NÃO é um ano bissexto');
  }
}