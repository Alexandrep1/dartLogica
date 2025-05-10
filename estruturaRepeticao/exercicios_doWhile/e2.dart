// Escreva um programa que some os números até que o usuário insira 0
import 'dart:io';

void main(List<String> args) {
  int numero;
  int soma = 0;
  int i = 1;
  print('Informe quantos valores desejar, e obtenha a soma digitando 0: ');

  do {
    stdout.write('Informe o $iº número: ');
    numero = int.parse(stdin.readLineSync()!);
    soma += numero;
    i++;
  } while (numero !=0);

  print('A soma dos valores informados é: $soma');

}