import 'carrinho.dart';
import 'produto.dart';
void main(List<String> args) {
  
  Carrinho carrinho = new Carrinho();
  
  //adicionando itens no carrinho
  carrinho.adicionarProduto(Produto("arroz", 12.89));
  carrinho.adicionarProduto(Produto("feijao", 8.99));
   carrinho.adicionarProduto(Produto("castanha", 5.99));

   carrinho.mostrarCarrinho();
   print("valor total ${carrinho.calculaTotal()}");
}