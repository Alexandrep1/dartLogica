import 'produto.dart';

class Carrinho {
  List<Produto> produtos = [];

  void adicionarProduto(Produto p) {
    produtos.add(p);
    print("Produto adicionado: ${p.nome}");
  }

  void mostrarCarrinho() {
    double total = 0.0;
    for (var produto in produtos) {
      print("Produto: ${produto.nome} - R\$ ${produto.preco}");
      total += produto.preco;
    }
    print("Total: R\$ $total");
  }

  double calculaTotal() {
    double total = 0.0;
    for (var produto in produtos) {
      total += produto.preco;
    }
    return total;
    
  }
}

//teste