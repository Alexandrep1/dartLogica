// 9 Receba um número e diga se ele é divisível por 5 ou não.

import 'dart:io';

void main(List<String> args) {
  stdout.write('Informe um valor númerico divisível por 5: ');
  double valor = double.parse(stdin.readLineSync()!);

  if (valor % 5 == 0) {
    print('O valor informado É divisível por 5');
  } else {
    print('O valor informado NÃO é divisível por 5');
  }
}