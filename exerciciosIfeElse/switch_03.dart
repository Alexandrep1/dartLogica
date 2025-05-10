// 3. Escreva um programa que receba uma letra e diga se é uma vogal ou consoante usando switch.
import 'dart:io';

void main(List<String> args) {
  stdout.write('Informe apenas uma letra: ');
  String letra = stdin.readLineSync()!;

  switch (letra) {
    case 'a' || 'e' || 'i' || 'o' || 'u':
      print('A letra informada É uma vogal');
      break;

    default:
      print('A letra informada NÃO é uma vogal');
  }

}