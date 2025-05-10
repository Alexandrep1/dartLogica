import 'ImpostoProduto.dart';
import 'ImpostoRenda.dart';

void main(List<String> args) {
  ImpostoRenda ir = new ImpostoRenda();
  ir.exibirImposto(100);

  ImpostoProduto ip = new ImpostoProduto();
  ip.exibirImposto(100);
}
