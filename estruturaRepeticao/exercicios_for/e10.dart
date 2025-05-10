// Receba 5 números do usuário e exiba a soma deles.
import 'dart:io';

void main(List<String> args) {
  double soma = 0;

  for (int i = 1; i < 6; i++) {
    stdout.write('Informe um valor para N$i: ');
    double entrada = double.parse(stdin.readLineSync()!);
    soma += entrada;
  }

  print(soma);

}