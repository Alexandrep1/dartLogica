// solicite uma senha para o usuário até que a senha correta seja digitada
import 'dart:io';

void main(List<String> args) {
  String senha = 'abc123';
  String login;

  do {
    stdout.write('Informe sua senha: ');
    login = stdin.readLineSync()!;
    if (login != senha) {
      print('Senha Incorreta, tente novamente!');
    } else {
      print('Autenticado!');
    }
  } while (login != senha);
}