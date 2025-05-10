abstract class Pagamento {
  double valorPagamento;

  Pagamento(this.valorPagamento);
  
  /**
   * void;
   * O método faz o pagamento;
   */
  void realizaPagamento();

  void emitirComprovante();
}
