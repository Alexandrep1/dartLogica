import 'PagamentoCredito.dart';
import 'PagamentoPix.dart';

void main(List<String> args) {
  // Exemplo com meios de pagamentos (gateway)
  PagamentoPix pix = new PagamentoPix(300);
  pix.realizaPagamento();
  pix.emitirComprovante();

  // Pagamento cartão
  PagamentoCredito credito = new PagamentoCredito(500, 3);
  credito.realizaPagamento();
  credito.emitirComprovante();
}
