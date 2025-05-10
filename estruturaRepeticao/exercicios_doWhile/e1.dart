// peça um numero ao usuario e só pare a execução do programa quando o usuário digitar 0
import 'dart:io';

void main(List<String> args) {
  int numero;

  do {

    stdout.write('Informe Zero para encerrar o programa: ');
    numero = int.parse(stdin.readLineSync()!);

  } while (numero != 0);
  print('Programa Encerrado');
}