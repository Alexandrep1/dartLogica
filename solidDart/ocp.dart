/* 
* VIOLANDO
*
*/

abstract class Produto {
  double calculadoraImpostos();
}

class Eletronico implements Produto {
  @override
  double calculadoraImpostos() {
    return 100 * 0.2;
  }
}

class Alimento implements Produto {
  @override
  double calculadoraImpostos() => 50 * 0.05;
}

class CalcularImposto {
  double calcular(Produto produto) {
    return produto.calculadoraImpostos();
  }
}

void main(List<String> args) {
  Eletronico eletro = Eletronico();
  Alimento alime = Alimento();

  CalcularImposto calculadora = CalcularImposto();

  print("Imposto eletrônicos: ${calculadora.calcular(eletro)}");
  print("Imposto alimentos: ${calculadora.calcular(alime)}");
}
