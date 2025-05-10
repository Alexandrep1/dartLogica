// conte quantos números foram digitados até que o usuário digite 0
import 'dart:io';

void main(List<String> args) {
  print('Digite quantos valores desejar, e para encerrar informe 0.');
  int i = 1;
  int contador = 0;
  int numero;

  do {
    stdout.write('Informe o $iº número: ');
    numero = int.parse(stdin.readLineSync()!);
    if (numero == 0) {
      break;
    }
    contador++;
    i++;
  } while (numero != 0);

  print('Você informou $contador números antes de encerrar');

}