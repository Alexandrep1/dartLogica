// 8 Verifique se uma senha digitada pelo usuário está correta.

import 'dart:io';

void main(List<String> args) {
  String senha = 'minha-senha';
  stdout.write('Informe sua senha: ');
  String inputSenha = stdin.readLineSync()!;

  if (inputSenha == senha) {
    print('Senha correta. Autenticado!');
  } else {
    print('Senha Incorreta. Tente novamente!');
  }
}