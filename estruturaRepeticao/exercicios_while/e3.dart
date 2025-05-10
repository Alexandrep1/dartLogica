// Encontrar o maior número entre 5 números digitados - Peça ao usuário 5 números e determine o maior deles.
import 'dart:io';

void main(List<String> args) {
  int i = 0;
  double maior_numero = 0;

  while (i < 5) {
    print('Informe um valor para N${i+1}: ');
    double numero = double.parse(stdin.readLineSync()!);

    if (numero > maior_numero) {
      maior_numero = numero;
    }

    i++;
  }

  print('O maior número informado foi $maior_numero');

}