// Descobrir se um número digitado pelo usuário é primo
import 'dart:io';

void main(List<String> args) {
  stdout.write('Informe um número inteiro: ');
  int numero = int.parse(stdin.readLineSync()!);
  int i = 2;
  bool primo = true;

  while (i < numero) {
    if (numero % i == 0) {
      primo = false;
      break;
    }
    i++;
  }

  if (primo) {
    print('O número informado é primo');
  } else {
    print('O número informado NÃO é primo');
  }

}