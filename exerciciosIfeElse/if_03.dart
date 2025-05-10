// 3 Crie um programa que verifica se uma pessoa é maior de idade com base na idade informada.
import 'dart:io';

void main(List<String> args) {
  stdout.write('Informe sua idade: ');
  int idade = int.parse(stdin.readLineSync()!);

  if (idade < 18){
    print('Você é menor de idade');
  } else {
    print('Você é maior de idade');
  }
}