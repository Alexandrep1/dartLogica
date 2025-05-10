/* 
Composição
Tipo de agregação mais forte
as partes não exisem sem o todo
indica uma dependencia de ciclo de vida
exemplo: casa compõem comodo, se a casa é destruida, os comodos também são
os comodos nascem e morrem com a casa
isso é composição
 */

//aplicando exemplo 1

class Comodo{
  String nome;
  Comodo(this.nome);
}

class Casa{
  List<Comodo> comodos = [];

  Casa(){
    comodos = [Comodo("sala"), Comodo("Cozinha")];
  }
}

//exemplo 2

class Produto {
  final String nome;
  final double preco;

  Produto(this.nome, this.preco);
}

class Pedido{
  final List<Produto> itens = [];

  void adicionarProduto(Produto produto){
    itens.add(produto);
  }
  double calcularTotal(){
  double total = 0;
  for(var produtos in itens){
    total += produtos.preco;
   }
   return total;
  }
  void mostrarResumo(){
    print("resumo do pedido");

    for(var produto in itens){
      print("Produto: ${produto.nome} Valor: ${produto.preco}");
    }
    print("total do pedido: ${calcularTotal()}");
  }
}

void main(List<String> args) {
  Produto p1 = Produto("Camisa", 145);
  Produto p2 = Produto("Bermuda", 50);

  Pedido pedido = Pedido();
  pedido.adicionarProduto(p1);
  pedido.adicionarProduto(p2);

  pedido.mostrarResumo();

  }