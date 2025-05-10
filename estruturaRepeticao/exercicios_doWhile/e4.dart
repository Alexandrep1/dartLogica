// Mostre se um número é par ou ímpar até que o usuário digite 0
import 'dart:io';

void main(List<String> args) {
  int numero;
  print('Informe valores para descobrir se é PAR ou ÍMPAR, para encerrar informe 0.');

  do {
    stdout.write('Informe um número: ');
    numero = int.parse(stdin.readLineSync()!);

    if (numero == 0) {
      print('Programa Encerrado');
      break;
    } else if (numero % 2 == 0) {
      print('$numero é PAR');
    } else {
      print('$numero é ÍMPAR');
    }
  } while (numero != 0);
}