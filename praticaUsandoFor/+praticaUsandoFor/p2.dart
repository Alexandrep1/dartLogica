import 'dart:io';

void main(List<String> args) {
  stdout.write('Informe um número inteiro: ');
  int num = int.parse(stdin.readLineSync()!);
  int fatorial = 1;

  for (int i = num; i > 0; i--) {
    fatorial *= i;
  }

  print(fatorial);

}