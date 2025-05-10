// solicite um número para o usuário e verifique se o mesmo é divisivel por 3. Encerre o programa ao digitar 0.
import 'dart:io';

void main(List<String> args) {
  print('Ganhe 1 ponto a cada número informado, caso o mesmo for divisível por 3. Para encerrar digite 0.');
  int i = 1;
  int pontos = 0;
  int numero;

  do {
    stdout.write('Digite o $iº número: ');
    numero = int.parse(stdin.readLineSync()!);
    if (numero == 0){
      break;
    } else if (numero % 3 == 0) {
      print('Parábens, você fez 1 ponto');
      pontos++;
    } else {
      print('Errou, tente novamente!');
    }
    i++;
  } while (numero != 0);

  print('Você fez $pontos pontos.');

}