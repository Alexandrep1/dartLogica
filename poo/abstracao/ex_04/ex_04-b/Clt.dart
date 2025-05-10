import 'Funcionario.dart';

class Clt extends Funcionario {
  Clt(String nome, double salarioBase) : super(nome, salarioBase);

  void beneficios() {
    print("Beneficio CLT: Plano de saúde");
  }

  @override
  double salarioLiquido() {
    return salarioBase -= salarioBase * 0.15;
  }
}
