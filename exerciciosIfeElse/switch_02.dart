// 2. Faça um programa que identifique o mês com base em um número de 1 a 12.
import 'dart:io';

void main(List<String> args) {
  List<String> mesesAno = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro'
  ];

  stdout.write('Informe um valor numérico inteiro, entre 1 e 12: ');
  int valor = int.parse(stdin.readLineSync()!);

  switch (valor - 1) {
    case 0 || 1 || 2 || 3 || 4 || 5 || 6 || 7 || 8 || 9 || 10 || 11:
      print('O mês do ano correspondente ao valor informado é ${mesesAno[valor - 1]}');
      break;

    default:
      print('O valor informado NÃO corresponde a nenhum mês do ano');
  }
}