abstract class Funcionario {
  String nome;
  double salarioBase;
  Funcionario(this.nome, this.salarioBase);

  void exibirDados() {
    print('Nome: $nome');
    print('Salário Base: $salarioBase');
    print('Salário líquido: ${salarioLiquido()}');
  }

  double salarioLiquido();
}
