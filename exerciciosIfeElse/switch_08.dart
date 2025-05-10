// 8. Use um switch para implementar uma calculadora com operações básicas (+, -, *, /).
import 'dart:io';

void main(List<String> args) {
  stdout.write('''
  Selecione uma operação:
  [A]dição (+)
  [S]ubtração (-)
  [M]ultiplicação (*)
  [D]ivisão (/)
  ''');
  String operacao = stdin.readLineSync()!;
  String operacaoUpper = operacao.toUpperCase();

  switch (operacaoUpper) {
    case 'A':
      stdout.write('Informe valor N1: ');
      double n1 = double.parse(stdin.readLineSync()!);
      stdout.write('Informe valor N2: ');
      double n2 = double.parse(stdin.readLineSync()!);
      double soma = n1 + n2;
      print('O resultado dessa adição é: $soma');

    case 'S':
      stdout.write('Informe valor N1: ');
      double n1 = double.parse(stdin.readLineSync()!);
      stdout.write('Informe valor N2: ');
      double n2 = double.parse(stdin.readLineSync()!);
      double subtracao = n1 - n2;
      print('O resultado dessa subtração é: $subtracao');

    case 'M':
      stdout.write('Informe valor N1: ');
      double n1 = double.parse(stdin.readLineSync()!);
      stdout.write('Informe valor N2: ');
      double n2 = double.parse(stdin.readLineSync()!);
      double multiplicacao = n1 * n2;
      print('O resultado dessa subtração é: $multiplicacao');

    case 'D':
      stdout.write('Informe valor N1: ');
      double n1 = double.parse(stdin.readLineSync()!);
      stdout.write('Informe valor N2: ');
      double n2 = double.parse(stdin.readLineSync()!);
      double divisao = n1 / n2;
      print('O resultado dessa subtração é: $divisao');
  }
  
}