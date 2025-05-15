abstract class Pagamento {
  void metodoPagamento(double valor);
}

class CartaoCredito implements Pagamento {
  @override
  void metodoPagamento(double valor) {
    print("Exibindo método de pagamento: R\$ $valor no cartão de crédito");
  }
}

class Caixa extends Pagamento {
  final Function(double) mostrandoPagamentoCallback;

  Caixa(this.mostrandoPagamentoCallback);

  @override
  void metodoPagamento(double valor) {
    mostrandoPagamentoCallback(valor);
  }
}

class PagamentoAlto extends Pagamento {
  @override
  void metodoPagamento(double valor) {
    print("Realizando pagamento alto de R\$ $valor");
  }

  void realizarPagamento(double valor) {
    metodoPagamento(valor);
  }
}

void main(List<String> args) {
  

  
}
