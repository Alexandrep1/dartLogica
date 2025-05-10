import 'dart:io';

void main(List<String> args) {
  List<List<dynamic>> produtos = [];
  List<List<dynamic>> carrinho = [];

  while (true) {
    // menu de controle
    print('''
    ##### MENU #####
    [1] CADASTRO PRODUTO
    [2] LISTAR PRODUTOS
    [3] ADICIONAR AO CARRINHO
    [4] MOSTRAR CARRINHO
    [5] SAIR
    ''');
    stdout.write('Escolha a opção desejada: ');
    String? opcao = stdin.readLineSync();

    switch (opcao) {
      case '1':
        // Cadastro Produtos
        stdout.write('Informe o nome do produto: ');
        String nome = stdin.readLineSync()!;
        stdout.write('Informe o valor do produto: ');
        double valor = double.tryParse(stdin.readLineSync()!) ?? 0.0;
        if (valor > 0) {
          produtos.add([nome, valor]);
          print('Produto Cadastrado com sucesso');
        } else {
          print('Valor Inválido');
        }
        break;

      case '2':
        // Listar Produtos
        if (produtos.isEmpty) {
          print('Sem Produtos Cadastrados');
        } else {
          print('##### LISTA DE PRODUTOS #####');
          for (int i = 0; i < produtos.length; i++) {
            print('${i + 1} - ${produtos[i][0]} - R\$${produtos[i][1]}');
          }
        }
        break;

      case '3':
        // Adicionar ao Carrinho
        if (produtos.isEmpty) {
          print('Não existem produtos disponíveis');
          break;
        }
        stdout.write('Nome do Produto: ');
        String nomeProduto = stdin.readLineSync()!;
        double? precoProduto;

        for (var produto in produtos) {
          if (produto[0] == nomeProduto) {
            precoProduto == produto[1];
            break;
          }
        }

        if (precoProduto == null) {
          print('Produto não encontrado');
          break;
        }

        stdout.write('Qual a quantidade: ');
        int quantidade = int.tryParse(stdin.readLineSync()!) ?? 0;

        if (quantidade > 0) {
          carrinho.add([nomeProduto, quantidade, precoProduto]);
          print('Produto adicionado com sucesso');
        } else {
          print('Quantidade Inválida');
        }
        break;

      case '4':
        // Mostrar Carrinho
        if (carrinho.isEmpty) {
          print('Carrinho Vazio');
        } else {
          double total = 0.0;
          print('##### CARRINHO DE COMPRAS #####');

          int i = 1;
          for (var item in carrinho) {
            double subTotal = item[1] * item[2];
            total += subTotal;
            print('${i} - ${item[0]} - ${item[1]} - R\$${item[2]} | $subTotal');
            i++;
          }
          print('##### TOTAL R\$${total} #####');
        }
        break;

      case '5':
        // Sair
        print('Obrigado, Volte Sempre!');
        return;

      default:
        print('Escolha uma opção válida do menu!');
    }
  }
}
