// 6 Use um if para verificar se uma string contém mais de 5 caracteres.

import 'dart:io';
void main(List<String> args) {
  stdout.write('Informe um texto de qualquer tamanho: ');
  String? texto = stdin.readLineSync()!;

  int length_texto = texto.length;
  
  if (length_texto == 0) {
    print('O tamanho do texto informado é "NULL", ou seja, não possui nenhum caracter');
  } else if (length_texto == 5){
    print('O tamanho do texto informado é de 5 caracteres');
  } else if (length_texto > 5) {
    print('O tamanho do texto informado é MAIOR que 5 caracteres, contendo "$length_texto" caracteres');
  } else {
    print('O tamanho do texto informado é MENOR que 5 caracteres, contendo "$length_texto" caracteres');
  }

}