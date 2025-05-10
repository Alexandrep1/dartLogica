// 5. Crie um sistema que simule o menu de um restaurante, com diferentes opções.
import 'dart:io';

void main(List<String> args) {
  String menuPrincipal = ('''Bem-vindo a Lanchonete do Petry!
  Faça seu pedido atráves do menu abaixo:
  [L]ANCHES
  [P]ETISCOS
  [B]EBIDAS
  [F]INALIZAR PEDIDO
  ''');

  String menuLanches = ('''
  [1] X-SALADA
  [2] X-BURGER
  [3] X-BACON
  [0] VOLTAR
  ''');

  String menuPetiscos = ('''
  [1] BATATA-FRITA
  [2] PORÇÃO-ALCATRA
  [3] PORÇÃO-FRANGO
  [0] VOLTAR
  ''');

  String menuBebidas = ('''
  [1] COCA-COLA
  [2] GUARANÁ
  [3] SPRITE
  [0] VOLTAR
  ''');

  
  List<String> pedido = [];

  while (true) {
    stdout.write(menuPrincipal);
    String input = stdin.readLineSync()!;
    String inputUpper = input.toUpperCase();
    

    if (inputUpper == 'F') {
      print(pedido);
      break;
    }

    switch (inputUpper) {
      case 'L':
        stdout.write(menuLanches);
        int opcao = int.parse(stdin.readLineSync()!);

        switch (opcao) {
          case 0:
            break;

          case 1:
            pedido.add('X-SALADA');
            break;

          case 2:
            pedido.add('X-BURGER');
            break;

          case 3:
            pedido.add('X-BACON');
            break;

          default:
            print('Escolha uma opção válida');
        }

      case 'P':
        stdout.write(menuPetiscos);
        int opcao = int.parse(stdin.readLineSync()!);

        switch (opcao) {
          case 0:
            break;

          case 1:
            pedido.add('BATATA-FRITA');
            break;

          case 2:
            pedido.add('PORÇÃO-ALCATRA');
            break;

          case 3:
            pedido.add('PORÇÃO-FRANGO');
            break;

          default:
            print('Escolha uma opção válida');
        }

      case 'B':
        stdout.write(menuBebidas);
        int opcao = int.parse(stdin.readLineSync()!);

        switch (opcao) {
          case 0:
            break;

          case 1:
            pedido.add('COCA-COLA');
            break;

          case 2:
            pedido.add('GUARANÁ');
            break;

          case 3:
            pedido.add('SPRITE');
            break;

          default:
            print('Escolha uma opção válida');
        }
    }
  }
}