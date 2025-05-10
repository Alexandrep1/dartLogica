// Calcule o fatorial de um número digitado pelo usuário.
import 'dart:io';

void main(List<String> args) {
  stdout.write('Informe um número e descubra o seu fatorial: ');
  int numero = int.parse(stdin.readLineSync()!);
  int soma = 1;

  for (int i = numero; i > 0; i--) {
    soma *= (i);
  }

  print(soma);
}