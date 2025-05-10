class ContaBancaria {
  String titular;
  double _saldo = 0; // atributo privado

  ContaBancaria(this.titular);

  // Método público para acessar o _saldo:
  double getSaldo() {
    return _saldo;
  }

  // Métodos público para modificar o _saldo:
  bool depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      return true;
    }
    return false;
  }

  bool sacar(double valor) {
    if (_saldo >= valor) {
      _saldo -= valor;
      return true;
    }
    return false;
  }
}
