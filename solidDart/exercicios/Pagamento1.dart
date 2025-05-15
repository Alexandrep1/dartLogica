/* class CartaoCredito {
  void pagar (double valor){
    print("pagamento com cartão de crédito");
  }

}

class PagamentoAltoAcoplamento{
  final CartaoCredito cartao;
  
  PagamentoAltoAcoplamento(this.cartao);

  void processar(double valor){
    cartao.pagar(valor);
  }
} */

//baixo acoplamento

abstract class MetodoPagamento {
  void pagar(double valor);
}

class Cartao implements MetodoPagamento{

  @override
  void pagar(double valor) {
    print("pagamento com cartão de créidito: R\$ $valor");
  }
}

class Boleto implements MetodoPagamento {
  @override
  void pagar(double valor) {
    print("pagamento com boleto: R\$ $valor");
  }
}

class Pagamento1 {
  final MetodoPagamento metodo;
  Pagamento1(this.metodo);
  void processar(double valor){
    metodo.pagar(valor);
  }
}

void main(List<String> args) {
  final PagamentoCartao = Pagamento1(Cartao());
  PagamentoCartao.processar(200);
}