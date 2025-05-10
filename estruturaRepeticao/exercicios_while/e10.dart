// Exibir os dígitos de um número separado (ex: 123 → 1, 2, 3) Peça um número ao usuário e exiba seus dígitos separadamente.
import 'dart:io';

void main(List<String> args) {
  stdout.write('Informe um número inteiro: ');
  String valor = stdin.readLineSync()!;
  int i = 0;

  while (i < valor.length) {
    print(valor[i]);
    i++;
  }


}