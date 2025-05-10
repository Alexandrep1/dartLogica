/* 7. Criar um sistema de mercado com as seguintes regras
    A. Crie um cadastro de produtos onde cada produto deverá ter nome e valor
    B. Crie uma listagem de produtos cadastrados
    C. Crie um carrinho de compras informando o nome do item e a quantidade desejada onde o item deve ser encontrado na list pelo nome e com a posição (index) deve ser adicionado ao carrinho
    C. Mostre o carrinho com total de compras realizadas.
    Observações: 
        funções não devem ser usadas.
        você pode usar um List dynamic */

import 'dart:io';

void main(List<String> args) {
  List<Map<String, dynamic>> produtos = [];
  String menu = '''
  -- Escolha a opção desejada:
  [1] Cadastrar Produtos
  [2] Ver Estoque Atual
  [3] Realizar Compras
  [0] Encerrar
  ''';

  while(true){
    stdout.write(menu);
    int opcao = int.parse(stdin.readLineSync()!);

    if (opcao == 0){
      print('Volte Sempre');
      break;
    }

    switch (opcao){
      case 1:
        stdout.write('Informe o nome do produto: ');
        String nomeProduto = stdin.readLineSync()!;
        stdout.write('Informe o valor de venda: ');
        double precoProduto = double.parse(stdin.readLineSync()!);
        produtos.add({'Nome': nomeProduto, 'Preço': precoProduto});
        print('Produto Cadastrado no Sistema!!! \n');
        break;

      case 2:
        print('\n Listagem Produtos:');
        for (var produto in produtos){
          print('Nome: ${produto['Nome']} | Valor: ${produto['Preço']}');
        }
        print('');
        break;

      case 3:
        print('\n Digite o número dos produtos para adicionar ao carrinho: ');
        print('Para Finalizar digite [0] \n');
        int i = 1;
        for (var produto in produtos){
          print('[$i]${produto['Nome']} | R\$${produto['Preço']}');
          i++;
        }

        int j = 1;
        List<String> nomesProdutos = [];
        List<double> valorProdutos = [];
        while(true){
          stdout.write('$jº Produto: ');
          opcao = int.parse(stdin.readLineSync()!);
          j++;

          if (opcao == 0){
            print('\n ### NOTA FISCAL ###');
            double valorTotal = 0;
            int k = 0;
            for (var produto in nomesProdutos){
              print('${k+1}º - $produto - R\$${valorProdutos[k]}');
              valorTotal += valorProdutos[k];
              k++;
            }
            print('Valor Total: R\$$valorTotal \n ###################\n');
            break;
          }

          nomesProdutos.add(produtos[opcao-1]['Nome']);
          valorProdutos.add(produtos[opcao-1]['Preço']);
        }
        break;
    }
  };

}