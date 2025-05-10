/* Exercício 6 – Composição + SRP + OCP
Crie um sistema bancário onde ContaBancaria possui um Cliente (composição). A lógica de movimentação 
(depósito e saque) deve estar separada da lógica de geração de extrato.
Permita adicionar novos tipos de conta (poupança, salário) sem modificar o código atual. */


class Cliente {
  final String nome;

  Cliente(this.nome);
}

abstract class Extrato {
  void gerarExtrato(double saldo);
}

class ExtratoSimples implements Extrato {
  @override
  void gerarExtrato(double saldo) {
    print("Extrato Simples ");
    print("Saldo Atual: R\$ $saldo\n");
  }
}

class ContaBancaria {

  final Cliente cliente;
  double contaBancaria;
  final Extrato extrato;

  ContaBancaria(this.cliente, this.contaBancaria, this.extrato);

  bool adicionarDeposito(double value){
    if(value > 0){
      contaBancaria += value;
      print("dinheiro depositado com sucesso $value");
    } else {
      print("Erro. Tente novamente");
    }
    return false;
  }
  bool saque(double value){
    if(value <= contaBancaria){
      contaBancaria -= value;
      print("sacando dinheiro... $value");
    } else {
      print("Erro. Tente novamente");
    }
    return false;

  }
  void mostrarExtrato(){
   extrato.gerarExtrato(contaBancaria);
 }

}

class contaPoupanca extends ContaBancaria {
  contaPoupanca(Cliente cliente, double saldo, Extrato extrato)
  : super(cliente, saldo, extrato);
}

class ContaSalario extends ContaBancaria{
  ContaSalario(Cliente cliente, double saldo, Extrato extrato)
  : super(cliente, saldo, extrato);
}

void main(List<String> args) {
  
  var cliente1 = Cliente("alexandre");
  var cliente2 = Cliente("patricia");

  contaPoupanca contaPoupanca1 = contaPoupanca(cliente1, 1000, ExtratoSimples());
  ContaSalario  contaSalario = ContaSalario(cliente2, 1000, ExtratoSimples());

  contaPoupanca1.adicionarDeposito(200);
  contaPoupanca1.saque(100);
  contaPoupanca1.mostrarExtrato();

  contaSalario.adicionarDeposito(200);
  contaSalario.saque(200);
  contaSalario.mostrarExtrato();

}

