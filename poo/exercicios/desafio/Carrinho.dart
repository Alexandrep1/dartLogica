import 'Produto.dart';

class Carrinho {
  List<Produto> produtos = [];

  void adicionarProduto(Produto p) {
    produtos.add(p);
    print("Produto Adicionado: ${p.nome}");
  }

  void mostrarCarrinho() {
    int i = 1;
    for (var produto in produtos) {
      print("Produto ${i}: ${produto.nome} - R\$${produto.preco}");
      i++;
    }
  }

  double calcularTotal() {
    double total = 0.0;
    for (var produto in produtos) {
      total += produto.preco;
    }
    return total;
  }
}
