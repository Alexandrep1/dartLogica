/* 
  4. crie uma classe abstrata chamada funcionario 
  - implemente um funcionario CLT que tem desconto de INSS e o benefício como 
    plano de saúde
  - implemente um funcionario PJ que não tem descontos nem benefícios.
  - mostre o salàrio liquido de cada um deles.
  - decida o que é melhor usar extends ou implements
 */

abstract class Funcionario {
  String nome;
  double salario;
  Funcionario(this.nome, this.salario);

  double salarioLiquido();
}
