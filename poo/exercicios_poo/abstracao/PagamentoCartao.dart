import 'Pagamento.dart';

class PagamentoCartao implements Pagamento{
  double valorPagamento;
  int parcelas;

  PagamentoCartao(this.valorPagamento, this.parcelas);

  void realizarPagamento(){
    if(valorPagamento > 0){
      print("Efetuando pagamento no cartão R\$ $valorPagamento");
    }
  }

  void emitirComprovante(){
    print("pagamento com cartão efetuado.");
    print("valor: ${valorPagamento} parcelas: ${parcelas}");
  }
}