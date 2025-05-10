// 4 Verifique se um número está dentro de um intervalo (exemplo: entre 10 e 20).
import 'dart:io';

void main(List<String> args) {
  stdout.write('Digite um número entre 10 e 20: ');
  int numero = int.parse(stdin.readLineSync()!);
  
  if (numero >= 10 && numero <= 20){
    print('Você informou corretamente');
  } else{
    print('Incorreto!');
  }
}