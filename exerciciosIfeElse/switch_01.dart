// 1. Crie um programa que receba um número de 1 a 7 e exiba o dia da semana correspondente.
import 'dart:io';

void main(List<String> args) {
  List<String> diasSemana = [
    'Domingo',
    'Segunda-Feira',
    'Terça-Feira',
    'Quarta-Feira',
    'Quinta-Feira',
    'Sexta-Feira',
    'Sábado'
  ];

  stdout.write('Informe um valor numérico inteiro, entre 1 e 7: ');
  int valor = int.parse(stdin.readLineSync()!);

  switch (valor - 1) {
    case 0 || 1 || 2 || 3 || 4 || 5 || 6:
      print('O dia da semana correspondente a este valor é ${diasSemana[valor - 1]}');
      break;
    
    default:
      print('O valor informado NÃO corresponde a nenhum dia da semana');
  }

}