// 10. Crie um programa que avalie uma nota de prova e diga se o aluno está aprovado, em recuperação ou reprovado (Aprovado: 7+)
import 'dart:io';

void main(List<String> args) {
  stdout.write('Informe sua nota na prova: ');
  double nota = double.parse(stdin.readLineSync()!);

  if (nota < 0 || nota > 10) {
    print('Informe uma nota válida, entre 0 e 10');
  }
  else if (nota < 5) {
    print('Você está REPROVADO');
  } else if (nota >= 5 && nota < 7) {
    print('Você está em RECUPERAÇÃO');
  } else {
    print('Você está APROVADO');
  }
}