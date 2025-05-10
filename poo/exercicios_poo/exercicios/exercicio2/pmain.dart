import 'ImpostoProduto.dart';
import 'ImpostoRenda.dart';

void main(List<String> args) {
  
  ImpostoRenda pro = new ImpostoRenda();
  pro.calcular(100);

  ImpostoProduto imp = new ImpostoProduto();
  imp.calcular(100);


}