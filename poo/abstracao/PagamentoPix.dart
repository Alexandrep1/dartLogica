import 'Pagamento.dart';

class PagamentoPix implements Pagamento {
  double valorPagamento;

  PagamentoPix(this.valorPagamento);

  void realizaPagamento() {
    print("Pagamento realizado via PIX no valor R\$$valorPagamento");
  }

  void emitirComprovante() {
    print("Pagamento via PIX confirmado");
  }
}
