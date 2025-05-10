import 'dart:io';

class ContaBancariaEu {

  double conta;
  double saldo;

  ContaBancariaEu(this.conta, this.saldo);

  bool depositar(double valor){
    if(valor > 0){
      saldo += valor;
      return true;
    }
    return false;
  }
  bool saque(double valor){
    if(valor > 0 && saldo >= valor){
      saldo -= valor;
      return true;
    }
    return false;
  }
  double getSaldo(){
    return saldo;
  }
}

void main(List<String> args) {
  
ContaBancariaEu conta = new ContaBancariaEu(12345.9, 1000);
bool executando = true;

print("bem vindo ao banco tal tal tal ${conta.conta}");


while(executando){

print("1 - depositar dinheiro");
print("2 - sacar dinheiro");
print("3 - ver saldo");
print("4 - sair da conta");

String? escolha = stdin.readLineSync();

switch(escolha){

  case "1":
  print("digite o valor para deposito");
  double? valor = double.tryParse(stdin.readLineSync() ?? '');
  if(valor != null && conta.depositar(valor)){
    print("deposito efetuado com sucesso !");
  } else {
    print("tente novamente");
  }
  break;

  case "2":
  print("digite o valor para saque");
  double? valor1 = double.tryParse(stdin.readLineSync() ?? "");
  if(valor1 != null && conta.saque(valor1)){
    print("saque efetuado com sucesso");
  } else {
    print("tente novamente");
  }
  break;

  case "3":
  print("saldo atual: ${conta.getSaldo().toStringAsFixed(2)}");
  break;

  case "4":
  print("sair do programa");
  executando = false;
  break;

  default:
  print("opção invalida, tente novamente");
  }

}

}
