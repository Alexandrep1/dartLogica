/* 
  * ACOPLAMENTO:
    - indica o nível de dependência entre classes
    - baixo acoplamento é desejável, pois significa que as classes estão bem 
      isoladas e independentes

  *Exemplo:
    - uma classe pedido que depende diretamente de uma classe cliente (e não
      de uma interface) tem um acoplamento forte (indesejável)
 */

// Exemplo com alto acoplamente (péssima prática)
class CartaoCredito {
  void pagar(double valor) {
    print("Pagamento com cartão: R\$$valor");
  }
}

class Caixa {
  final CartaoCredito cartao = new CartaoCredito();

  void finalizarCompra(double valor) {
    cartao.pagar(valor); // forte dependência da classe concreta;
  }
}

// Exemplo com baixo acoplamento (ótima prática)
abstract class MetodoPagamento {
  void pagar(double valor);
}

class CreditCard implements MetodoPagamento {
  @override
  void pagar(double valor) {
    print("Pagamento R\$$valor realizado no cartão de crédito");
  }
}

class Caixaa {
  final MetodoPagamento metodo;
  Caixaa(this.metodo);

  void finalizaCompra(double valor) {
    metodo.pagar(valor);
  }
}

void main(List<String> args) {
  Caixaa caixa = new Caixaa(new CreditCard());
  caixa.finalizaCompra(100);
}
