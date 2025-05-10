import 'Pagamento.dart';

class PagamentoPix implements Pagamento {
  double valorPagamento;

  PagamentoPix(this.valorPagamento);

  @override
  void realizarPagamento(){
    print("pagamento realizado com pix no valor R\$ $valorPagamento");
  }

  void emitirComprovante(){
    print("Pagamento via pix confirmado. ");
  }
}