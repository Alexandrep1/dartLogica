import "Conta.dart";

void main(List<String> args) {
  ContaBancaria c1 = new ContaBancaria("Gustavo", "1234-9");

  if (c1.depositar(100)) {
    print("Depósito realizado com sucesso.");
  } else {
    print("Você precisa depositar algum valor");
  }

  print(
    "Cliente: ${c1.cliente} | Conta: ${c1.conta} | Saldo: ${c1.getSaldo()}",
  );

  print("Sacar");
  if (c1.sacar(150)) {
    print("Saque realizado com sucesso.");
    print("Saldo atual: ${c1.getSaldo()}");
  } else {
    print("Saldo insuficiente para realizar o saque.");
  }
}
