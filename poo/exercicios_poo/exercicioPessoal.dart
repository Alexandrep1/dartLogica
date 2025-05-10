import 'dart:io';

class Conta {

  String titular;
  String conta;
  double saldo = 0;

  Conta(this.titular, this.conta);
  
  bool depositar(double valor){
    if(valor > 0){
      saldo += valor;
      return true;
    }
    return false;
  }

  bool saque(double valor){
    if(saldo > valor && valor > 0){
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
  
Conta conta = Conta("alexandre", "1234-9");
  bool executando = true;

  print(" Bem-vindo, ${conta.titular}!");

  while (executando) {
    print("\n--- Menu ---");
    print("1 - Consultar saldo");
    print("2 - Depositar");
    print("3 - Sacar");
    print("0 - Sair");
    stdout.write("Escolha uma opção: ");
    String? opcao = stdin.readLineSync();

    switch (opcao) {
      case '1':
        print(" Saldo atual: R\$ ${conta.getSaldo().toStringAsFixed(2)}");
        break;

      case '2':
        stdout.write("Digite o valor para depósito: ");
        String? valorDeposito = stdin.readLineSync();
        double? valor = double.tryParse(valorDeposito ?? "");
        if (valor != null && conta.depositar(valor)) {
          print(" Depósito realizado com sucesso.");
        } else {
          print(" Valor inválido para depósito.");
        }
        break;

      case '3':
        stdout.write("Digite o valor para saque: ");
        String? valorSaque = stdin.readLineSync();
        double? valor = double.tryParse(valorSaque ?? "");
        if (valor != null && conta.saque(valor)) {
          print(" Saque realizado com sucesso.");
        } else {
          print(" Não foi possível realizar o saque.");
        }
        break;

      case '0':
        print("Encerrando o programa. Até mais!");
        executando = false;
        break;

      default:
        print("Opção inválida. Tente novamente.");
    }
  }

}