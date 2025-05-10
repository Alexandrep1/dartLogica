import 'Funcionario.dart';

class Clt implements Funcionario {
  String nome;
  double salario;
  Clt(this.nome, this.salario);

  void beneficios() {
    print('Benefícios do $nome: Plano de Saúde, Vale-alimentação');
  }

  double calcularDesconto() {
    return salario * 0.15;
  }

  double salarioLiquido() {
    return salario - calcularDesconto();
  }
}
