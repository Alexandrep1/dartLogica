/**
 * do while é semelhante ao while, porém ele executa primeiro uma vez para depois avaliar a condição a ser verificada.
 * isso garante que o código seja executado ao menos uma vez mesmo que a condição já esteja satisfeita
 * sintaxe
 do {
  // bloca a ser executado;
 } while(condicao);
 */
import 'dart:io';

void main(List<String> args) {
  // exemplo 01 - pedir um numero positivo para o usuário;
  // int numero = 0;

  // do {
  //   print('Digite um número positivo');
  //   numero = int.parse(stdin.readLineSync()!);
  // } while(numero != 0);

  
  // exemplo 02 - encerra o programa quando o usuário acertar o número definido;
  int numeroDefinido = 7;
  int tentativa;

  do {
    print('Digite um número entre 1 e 10: ');
    tentativa = int.parse(stdin.readLineSync()!);

  } while (tentativa != numeroDefinido);

  print('Parabéns, você acertou!');

}