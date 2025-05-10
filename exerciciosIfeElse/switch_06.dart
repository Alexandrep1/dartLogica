// 6. Escreva um programa que converta números de 1 a 5 para números romanos.
import 'dart:io';

void main(List<String> args) {
  stdout.write('Informe um número inteiro de 1 a 5: ');
  int valor = int.parse(stdin.readLineSync()!);

  switch (valor) {
    case 1:
      String valorRomano = 'I';
      print('O número informado em algarismo romano é "$valorRomano"');
      break;

    case 2:
      String valorRomano = 'II';
      print('O número informado em algarismo romano é "$valorRomano"');
      break;

    case 3:
      String valorRomano = 'III';
      print('O número informado em algarismo romano é "$valorRomano"');
      break;

    case 4:
      String valorRomano = 'IV';
      print('O número informado em algarismo romano é "$valorRomano"');
      break;

    case 5:
      String valorRomano = 'V';
      print('O número informado em algarismo romano é "$valorRomano"');
      break;

    default:
      print('Informe um valor entre 1 e 5');

  }
}