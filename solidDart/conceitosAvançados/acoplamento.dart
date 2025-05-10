/* 
acoplamento
indica o nivel de dependencia entre classes 
baixo acoplamento é desejavel, pois significa que as classes estão bem isoladas e independentes.
exemplo
uma classe pedido que depende diretamente de uma classe cliente (e não de uma interface) tem um acoplamento forte
 */

 //exemplo de acoplamento forte (má pratica)

/*  class cartaoCredito{
  void pegar(double valor){
    print("pagamento com cartão: R\$ $valor");
  }
 }

 class Caixa{
  final cartaoCredito cartao = cartaoCredito();

  void finalizarCompra(double valor){
    cartao.pagar(valor); //forte dependencia da classe concreta
  }
 } */

 //baixo acoplamento

 abstract class MetodoPagamento{
  void pagar(double valor);
 }

  class CartaoCredito implements MetodoPagamento{
    @override
    void pagar(double valor){
      print("pagando R\$ $valor no cartão de crédito");
    }
  }

  class Caixa{
    final MetodoPagamento metodo;

    Caixa(this.metodo);

    void finalizarCompra(double valor){
      metodo.pagar(valor);
    }
  }