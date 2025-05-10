// Contar quantos números o usuário digitou antes de inserir -1 Peça números ao usuário até que ele digite -1. Depois, exiba quantos números foram digitados.
import 'dart:io';

void main(List<String> args) {
  double i = 1;
  int contador = 0;

  while (true) {
    stdout.write('Informe o $iº valor: ');
    i = double.parse(stdin.readLineSync()!);

    if (i == -1) {
      break;
    } else {
        contador += 1;
    }
  }

  print('Foram informados $contador numeros, antes de -1');

}
