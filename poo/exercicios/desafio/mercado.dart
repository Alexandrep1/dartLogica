import 'Carrinho.dart';
import 'Produto.dart';

void main(List<String> args) {
  Carrinho carrinho = new Carrinho();

  // adicionando itens no carrinho:
  carrinho.adicionarProduto(Produto("Arroz", 5.49));
  carrinho.adicionarProduto(Produto("Feijão", 6.35));
  carrinho.adicionarProduto(Produto("Leite", 4.99));

  carrinho.mostrarCarrinho();

  print(carrinho.calcularTotal());
}
