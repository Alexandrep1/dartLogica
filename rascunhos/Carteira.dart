import 'dart:io';

class Wallet {
  String conta = "12345.9";
  int saldo;

  Wallet(this.conta, this.saldo);

  bool adicionarDeposito(double valor) {
    try {
      if (valor > 0) {
        saldo += valor.toInt(); 
        print("Dinheiro adicionado. Saldo atual: $saldo");
        return true;
      } else {
        print("Por favor, insira um valor positivo");
        return false;
      }
    } catch (e) {
      print("Erro ao adicionar depósito: $e");
      return false;
    }
  }

  bool sacarDinheiro(double valor) {
    try {
      if (valor > 0 && valor <= saldo) {
        saldo -= valor.toInt();
        print("Dinheiro sacado com sucesso! Saldo atual: $saldo");
        return true;
      } else {
        print("Saldo insuficiente ou valor inválido");
        return false;
      }
    } catch (e) {
      print("Erro ao sacar depósito: $e");
      return false;
    }
  }

  int getSaldo() {
    return saldo;
  }
}

void main() {
  Wallet wallet = Wallet("12345.9", 500);
  bool executando = true;

  while (executando) {
    print("\n--- Menu ---");
    print("1. Adicionar depósito");
    print("2. Sacar dinheiro");
    print("3. Ver saldo");
    print("4. Sair");
    stdout.write("Escolha uma opção: ");
    String? escolha = stdin.readLineSync();

    switch (escolha) {
      case '1':
        stdout.write("Digite o valor para depositar: ");
        String? valorStr = stdin.readLineSync();
        double? valor = double.tryParse(valorStr ?? '');
        if (valor != null) {
          wallet.adicionarDeposito(valor);
        } else {
          print("Valor inválido.");
        }
        break;

      case '2':
        stdout.write("Digite o valor para sacar: ");
        String? valorStr = stdin.readLineSync();
        double? valor = double.tryParse(valorStr ?? '');
        if (valor != null) {
          wallet.sacarDinheiro(valor);
        } else {
          print("Valor inválido.");
        }
        break;

      case '3':
        print("Saldo atual: ${wallet.getSaldo()}");
        break;

      case '4':
        print("Saindo...");
        executando = false;
        break;

      default:
        print("Opção inválida. Tente novamente.");
    }
  }
}
