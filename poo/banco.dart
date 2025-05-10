class Conta {

String cliente;
String conta;
double saldo = 0;

Conta(this.cliente, this.conta);

//depositar um valor
bool depositar(double valor){
  if(valor > 0){
    saldo += valor;
    return true;
  }
    return false;
  }

  //fazer um saque
  bool sacar(double valor){
    if(saldo >= valor && valor > 0){
      saldo -= valor;
      return true;
    }
    return false;
  }

 //verificar valores disponiveis na conta
 double getSaldo(){
  return saldo;
 } 

}

//usar a classe
void main(List<String> args) {
  
  Conta c1 = new Conta('alexandre', '1234-9');
  
  if(c1.depositar(100.00)){
    print("deposito realizado com sucesso.");
  } else {
    print("voce precisa depositar algum valor");
  }
  print("cliente: ${c1.cliente} Conta: ${c1.conta} Saldo: ${c1.getSaldo()}");

  print("sacar");
  if(c1.sacar(50)){
    print("saque ralizado com sucesso.");
    print("saldo atual: ${c1.getSaldo()}");
  } else {
    print("saldo insuficiente para realizar o saque. ");
  }
}