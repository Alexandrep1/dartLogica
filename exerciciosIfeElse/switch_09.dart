// 9. Receba um código de produto e exiba seu preço.
import 'dart:io';

void main(List<String> args) {
  Map<String, double> produtos = {
    'Playstation': 1500,
    'Iphone': 4500,
    'Notebook': 3200
  };

  stdout.write('''
  Escolha uma das opções:
  [P]laystation
  [I]phone
  [N]otebook
  ''');

  String opcao = stdin.readLineSync()!;
  String opcaoUpper = opcao.toUpperCase();

  switch (opcaoUpper) {
    case 'P':
      print('O valor do produto escolhido é ${produtos["Playstation"]}');
      break;

    case 'I':
      print('O valor do produto escolhido é ${produtos["Iphone"]}');
      break;

    case 'N':
      print('O valor do produto escolhido é ${produtos["Notebook"]}');
      break;

    default:
      print('Escolha uma opção válida');
  }
}