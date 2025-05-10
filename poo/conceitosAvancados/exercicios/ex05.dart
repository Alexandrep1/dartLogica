/* 
  * Acoplamento
    - Crie duas versões da classe Pagamento: uma que usa uma interface MetodoPagamento (baixo acoplamento) e 
      outra que depende diretamente de CartaoCredito. 
    - Mostre como a primeira facilita a troca de métodos.
 */

// Exemplo com alto acoplamento (Péssima Prática):
class CartaoCredito {
  void pagar(double valor) {
    print("Pagando no cartão: R\$$valor");
  }
}

class Caixa {
  final CartaoCredito cartao = new CartaoCredito();
  
  void pagar(double valor) {
    cartao.pagar(100);
  }
}

// Exemplo com baixo acoplamento (Ótima Prática):
abstract class MetodoPagamento {
  double pagar(double valor);
}

class CreditCard implements MetodoPagamento {
  @override
  double pagar(double valor) {
    return valor;
  }
}

class Caixaa {
  double totalCompra;
  final MetodoPagamento metodo;
  Caixaa(this.totalCompra, this.metodo);

  double realizarPagamento(double valor) {
    return metodo.pagar(valor);
  }
}

void main(List<String> args) {
  Caixaa c = new Caixaa(500, CreditCard());
  double valorPago = 250;
  if(c.totalCompra - c.realizarPagamento(valorPago) == 0) {
    print("Pagamento Finalizado com Sucesso");
  } else if(c.totalCompra - c.realizarPagamento(valorPago) > 0) {
    print("Falta pagar: ${c.totalCompra - c.realizarPagamento(valorPago)}");
  }
  
}