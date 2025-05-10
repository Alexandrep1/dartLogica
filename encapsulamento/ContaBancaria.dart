
class ContaBancaria {
  String titular;
  double _saldo = 0; // Atributo privado

ContaBancaria(this.titular);

bool depositar(double valor){
  if(valor > 0){
    _saldo += valor;
    return true;
  }
  return false;
}

bool sacar(double valor){
  if(_saldo >= valor){
    _saldo -= valor;
    return true;
  }
  return false;
  }

  double getSaldo(){
  return _saldo;
}
  
}

