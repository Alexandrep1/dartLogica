import 'Pagamento.dart';

class PagamentoCredito implements Pagamento {
  double valorPagamento;
  int parcelas;

  PagamentoCredito(this.valorPagamento, this.parcelas);

  void realizaPagamento() {
    if (valorPagamento > 0) {
      print("Pagamento realizado via CRÉDITO no valor R\$$valorPagamento");
    }
  }

  void emitirComprovante() {
    print("Pagamento via CRÉDITO confirmado");
    print("Valor: ${valorPagamento} | Parcelas: ${parcelas}");
  }
}
