/* Exercício 8 – Composição + SRP + ISP
Modele um sistema de restaurante onde um Garcom possui um Pedido, e o pedido possui múltiplos Itens. 
O garçom apenas registra pedidos e não calcula preços. Crie uma interface para 
CalculadorDePreco e implemente separadamente. */

// Classe Item representa um item do pedido
class Item {
  final String nome;
  final double preco;

  Item(this.nome, this.preco);
}

class Pedido {
  final List<Item> itens = [];

  void adicionarItem(Item item) {
    itens.add(item);
    print("Item adicionado: ${item.nome} - R\$ ${item.preco}");
  }
}

class Garcom {
  final Pedido pedido;

  Garcom(this.pedido);

  void registrarItem(Item item) {
    pedido.adicionarItem(item);
  }
}

abstract class CalculadorDePreco {
  double calcularTotal(Pedido pedido);
}

class CalculadorDePrecoSimples implements CalculadorDePreco {
  @override
  double calcularTotal(Pedido pedido) {
    return pedido.itens.fold(0, (total, item) => total + item.preco);
  }
}

void main() {
  var pedido = Pedido();
  var garcom = Garcom(pedido);
  var calculador = CalculadorDePrecoSimples();

  garcom.registrarItem(Item("Pizza", 30.0));
  garcom.registrarItem(Item("Suco", 8.0));

  double total = calculador.calcularTotal(pedido);
  print("Total do pedido: R\$ $total");
}
