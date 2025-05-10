class ContaBancaria {
  // atributos:
  double saldo = 0;
  String cliente;
  String conta;

  ContaBancaria(this.cliente, this.conta);

  // métodos:
  bool depositar(double valor) {
    if (valor > 0) {
      saldo += valor;
      return true;
    }
    return false;
  }

  bool sacar(double valor) {
    if (saldo >= valor && valor > 0) {
      saldo -= valor;
      return true;
    }
    return false;
  }

  double getSaldo() {
    return saldo;
  }

  
}
