/* Crie um menu para o posto com as seguintes opções:
1- Exibir tabela de preços dos combustiveis: gasolina,etanol e diesel(pesquise o preço)
2- Colocar gasolina no carro, usuário deve escolher tipo de combustivel e quantidade em litros 
e exibir total a pagar no final
3- Calcular qual a distancia que o carro faz com o combustivel adquirido(perguntar o consumo do carro)
4- Uma opção de saída */

import 'dart:io';

void main(List<String> args) {
  String menu = '''
  [1] Exibir tabela de Preços
  [2] Realizar Abastecimento
  [3] Encerrar
  ''';

  Map<String, double> tabelaPrecos = {
    'Gasolina': 6.49,
    'Etanol': 4.55,
    'Diesel': 6.20
  };

  while (true) {
    print(menu);
    stdout.write('Escolha uma opção do menu: ');
    String opcao = stdin.readLineSync()!;

    switch (opcao) {
      case '1':
        // Exibir Tabela Preços
        print('''\n
        ##### TABELA PREÇOS #####
        Gasolina: R\$${tabelaPrecos['Gasolina']?.toStringAsFixed(3)}
        Etanol: R\$${tabelaPrecos['Etanol']?.toStringAsFixed(3)}
        Diesel: R\$${tabelaPrecos['Diesel']?.toStringAsFixed(3)}
        ''');
        break;

      case '2':
        // Realizar Abastecimento
        print('''
        [1] GASOLINA
        [2] ETANOL
        [3] DIESEL
        ''');
        stdout.write('Escolha o Combustível: ');
        String combustivel = stdin.readLineSync()!;
        stdout.write('Informe a quantidade em litros: ');
        double quantidade = double.parse(stdin.readLineSync()!);

        if (quantidade > 0) {
          switch (combustivel) {
            case '1':
              double valorTotal = tabelaPrecos['Gasolina']! * quantidade;
              print(
                  'Valor do abastecimento: R\$${valorTotal.toStringAsFixed(3)}');
              break;
            case '2':
              double valorTotal = tabelaPrecos['Etanol']! * quantidade;
              print(
                  'Valor do abastecimento: R\$${valorTotal.toStringAsFixed(3)}');
              break;
            case '3':
              double valorTotal = tabelaPrecos['Diesel']! * quantidade;
              print(
                  'Valor do abastecimento: R\$${valorTotal.toStringAsFixed(3)}\n');
              break;
            default:
              print('Escolha uma opção válida!');
              break;
          }
        } else {
          print('Informe a quantidade desejada');
        }
        
        stdout.write('''Informe o rendimento em KM por cada litro de combustível do seu veículo: ''');
        double rendimento = double.parse(stdin.readLineSync()!);
        print(
            '''\n Com a quantidade abastecida seu veículo vai andar: ${(quantidade * rendimento).toStringAsFixed(2)} KM's \n''');
        break;

      case '3':
        print('Obrigado por abastecer conosco!');
        return;
    }
  }
}
